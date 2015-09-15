#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>

#include "chop_line.h"
#include "list.h"

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
int executeCmd(char *argv[], int is_background, list_t* bg_pids_list){
    //Exit
    if(strcmp(argv[0], "exit") == 0){
        cleanup(bg_pids_list);
    }
    
    //Fork returns zero in child
    int pid = fork();
    if(pid){
        int status;
        if(is_background){
            list_insert_val(bg_pids_list, pid);
        }
        else{
            waitpid(pid, &status, 0);
        }
    }
    else{
        if(execvp(argv[0], argv) == -1){
            int errsv = errno;
            printf("execvp(): %s\n", strerror(errsv));
            fflush(stdout);
            return 1;
        }
    }
    return 0;
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

        int i;
        int cmd_valid = 1;
        int is_background = 0;
        char* args[chop_cmd->num_tokens + 1];

        int arg_index = 0;
        for(i = 0; i < chop_cmd->num_tokens; i++){
            char* curr_token = chop_cmd->tokens[i];
            //strcmp returns 0 if strings are equal
            if(strcmp(curr_token, "&") != 0){
                args[arg_index] = curr_token;
                arg_index++;
            }
            else if(i != (chop_cmd->num_tokens - 1)){
                //& is not the last token, error
                printf("Operator & must appear at end of command line");
                fflush(stdout);
                cmd_valid = 0;
                break;
            }
            else{
                is_background = 1;
            }
        }

        free_chopped_line(chop_cmd);
        if(!cmd_valid) {
            continue;
        }
        args[arg_index] = NULL;
        
        if(executeCmd(args, is_background, bg_pids_list) != 0) return 1;
        fflush(stdout);
    }
    return 0;
}
