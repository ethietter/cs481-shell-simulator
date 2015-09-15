#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

#include "chop_line.h"
#include "list.h"

typedef struct cmd_obj{
    char** argv;
    char* ifilename; //input filename
    char* ofilename; //output filename
    int is_append; //Was the >> operator used?
    int is_background;
    struct cmd_obj* next_cmd;
} cmd_obj;


void watchBgProcesses(list_t* bg_pids_list){
    struct list_node_t* node = bg_pids_list->head;
    while(node != NULL){
        int status = 0;
        int pid = node->val;
        node = node->next;

        //If waitpid returns 0, no children have changed state and the status variable is meaningless
        if(waitpid(pid, &status, WNOHANG) == 0) continue;
        if(WIFEXITED(status)){
            list_remove_val(bg_pids_list, pid);
        }
        //else, not the process hasn't ended yet
    }
}


void cleanup(list_t* bg_pids_list){
    if(bg_pids_list->size == 0) exit(0);
       
    //Wait for all background processes to finish
    while(bg_pids_list->size > 0){
        watchBgProcesses(bg_pids_list);
    }
    exit(0);
}


char* getRawCmd(list_t* bg_pids_list){
    size_t buff_size = 256;
    size_t char_index = 0;
    char *buffer = (char *) malloc(buff_size);


    char c;
    while((c = getchar()) != '\n'){
        if(c == EOF) cleanup(bg_pids_list);
        buffer[char_index] = c;
        char_index++;
        if(char_index >= buff_size){
            buff_size *= 2;
            buffer = (char *) realloc(buffer, buff_size);
        }
    }
    buffer[char_index] = '\0';
    return buffer;
}

//Returns 0 on success
int executeCmd(cmd_obj* cmd, list_t* bg_pids_list, int is_background, int prev_pipe[2]){
    //Exit
    if(strcmp(cmd->argv[0], "exit") == 0){
        cleanup(bg_pids_list);
    }
   
    int next_pipe[2];
    if(cmd->next_cmd != NULL){
        if(pipe(next_pipe) == -1){
            printf("Error creating pipe\n");
            exit(1);
        }
    }

    //Fork returns zero in child
    int pid = fork();
    if(pid){
        if(cmd->next_cmd != NULL){
            //This is the parent, so close the write end of the outgoing pipe
            close(next_pipe[1]);
            //There's another command to run, call executeCmd and pass the read
            //end of the pipe to it
            executeCmd(cmd->next_cmd, bg_pids_list, is_background, next_pipe);
        }


        int status;
        //printf("Waiting on: %u\n", pid);
        fflush(stdin);
        if(is_background){
            list_insert_val(bg_pids_list, pid);
        }
        else{
            waitpid(pid, &status, 0);
        }
    }
    else{
        
        if(prev_pipe == NULL){
            //first command, so attempt to read an input file
            if(cmd->ifilename != NULL){
                int ifile;
                ifile = open(cmd->ifilename, O_RDONLY);
                if(ifile == -1){
                    printf("%s: No such file or directory\n", cmd->ifilename);
                    exit(1);
                }
                dup2(ifile, STDIN_FILENO);
            }
        }
        else{
            //Read from the previous command
            dup2(prev_pipe[0], STDIN_FILENO);
        }
        if(cmd->next_cmd == NULL){
            //last command, so attempt to read an output file
            int ofile;
            if(cmd->ofilename != NULL){
                //File doesn't exist, so we're good to create it and write to it
                if(access(cmd->ofilename, F_OK) == -1){
                    ofile = open(cmd->ofilename, O_WRONLY | O_CREAT);
                    fchmod(ofile, 0777);
                    dup2(ofile, STDOUT_FILENO);
                }
                else if(cmd->is_append){
                    ofile = open(cmd->ofilename, O_WRONLY | O_APPEND);
                    dup2(ofile, STDOUT_FILENO);
                }
                else{
                    printf("%s: File exists\n", cmd->ofilename);
                    exit(1);
                }
            }
        }
        else{
            //Close the read end of the outgoing pipe
            close(next_pipe[0]);

            //More commands follow, so write to the outgoing pipe
            dup2(next_pipe[1], STDOUT_FILENO);
        }
        if(execvp(cmd->argv[0], cmd->argv) == -1){
            int errsv = errno;
            printf("execvp(): %s\n", strerror(errsv));
            fflush(stdout);
            return 1;
        }
    }
    return 0;
}

int isSpecialToken(char *token){
    if(strcmp(token, "|") == 0) return 1;
    if(strcmp(token, "<") == 0) return 1;
    if(strcmp(token, ">") == 0) return 1;
    if(strcmp(token, ">>") == 0) return 1;
    if(strcmp(token, "&") == 0) return 1;
    return 0;
}

cmd_obj* createEmptyCmd(int argv_count){
    char **argv = (char **) malloc(sizeof(char*)*argv_count);

    cmd_obj* new_cmd = (cmd_obj*) malloc(sizeof(cmd_obj));
    new_cmd->ifilename = NULL;
    new_cmd->ofilename = NULL;
    new_cmd->is_append = 0;
    new_cmd->next_cmd = NULL;
    new_cmd->argv = argv;
    return new_cmd;
}

cmd_obj* processCmd(chopped_line_t* chop_cmd){
    int i;
    int cmd_valid = 1;
    int is_background = 0;

    char* last_operator = NULL;

    //Max possible size of argv, based on num_tokens
    int argv_max_size = chop_cmd->num_tokens + 1;
    cmd_obj* curr_cmd = createEmptyCmd(argv_max_size);
    cmd_obj* first_cmd = curr_cmd;
    cmd_obj* prev_cmd;

    
    int arg_index = 0;
    for(i = 0; i < chop_cmd->num_tokens; i++){
        char* curr_token = chop_cmd->tokens[i];
        
        //Check for the & operator and fail if it's not the last token
        if(strcmp(curr_token, "&") == 0){
            if(i != (chop_cmd->num_tokens - 1)){
                //& is not the last token, error
                printf("Operator & must appear at end of command line\n");
                fflush(stdout);
                cmd_valid = 0;
                break;
            }
            is_background = 1; 
        }

        if(!isSpecialToken(curr_token)){
            if(last_operator == NULL){
                curr_cmd->argv[arg_index] = curr_token;
                arg_index++;
            }
            else if(strcmp(last_operator, ">") == 0){
                if(curr_cmd->ofilename == NULL){
                    curr_cmd->ofilename = curr_token;
                    last_operator = NULL;
                }
                else{
                    printf("Ambiguous output redirect\n");
                    fflush(stdout);
                    cmd_valid = 0;
                    break;
                }
            }
            else if(strcmp(last_operator, "<") == 0){
                if(curr_cmd->ifilename == NULL && curr_cmd == first_cmd){
                    curr_cmd->ifilename = curr_token;
                    last_operator = NULL;
                }
                else{
                    printf("Ambiguous input redirect\n");
                    fflush(stdout);
                    cmd_valid = 0;
                    break;
                }
            }
            else if(strcmp(last_operator, ">>") == 0){
                if(curr_cmd->ofilename == NULL){
                    curr_cmd->ofilename = curr_token;
                    last_operator = NULL;
                    curr_cmd->is_append = 1;
                }
                else{
                    printf("Ambiguous output redirect\n");
                    fflush(stdout);
                    cmd_valid = 0;
                    break;
                }
            }
        }
        else{
            if(strcmp(curr_token, "|") == 0){
                if(curr_cmd->ofilename != NULL){
                    printf("Ambiguous output redirect\n");
                    fflush(stdout);
                    cmd_valid = 0;
                    break;
                }
                //Check to make sure there are no trailing < or > or >> operators in the previous command
                if(last_operator != NULL){
                    printf("Missing name for redirect\n");
                    fflush(stdout);
                    cmd_valid = 0;
                    break;
                }
                curr_cmd->argv[arg_index] = NULL;
                prev_cmd = curr_cmd;
                curr_cmd = createEmptyCmd(argv_max_size);
                arg_index = 0;
                prev_cmd->next_cmd = curr_cmd;
            }
            else{
                last_operator = curr_token;
            }
        }
    }
    //Check to make sure there is no trailing < or > or >> operator
    if(last_operator != NULL && cmd_valid){
        printf("Missing name for redirect\n");
        fflush(stdout);
        cmd_valid = 0;
    }
    curr_cmd->argv[arg_index] = NULL;
   
    if(cmd_valid){
        first_cmd->is_background = is_background;
        return first_cmd;
    }
    else{
        return 0;
    }

}



int main(int argc, char *argv[]){
    list_t* bg_pids_list = list_create();
    while(1){
        watchBgProcesses(bg_pids_list);
        printf("mysh: ");
        fflush(stdout);
        char* raw_cmd = getRawCmd(bg_pids_list);
        chopped_line_t* chop_cmd = get_chopped_line(raw_cmd);
        free(raw_cmd);

        //No command was entered
        if(chop_cmd->num_tokens < 1) continue;
        

        cmd_obj* cmd = processCmd(chop_cmd);

        if(cmd == NULL) {
            continue;
        }
        if(executeCmd(cmd, bg_pids_list, cmd->is_background, NULL) != 0) return 1;
        fflush(stdout);
        free_chopped_line(chop_cmd);
    }
    return 0;
}
