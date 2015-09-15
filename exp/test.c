#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <errno.h>
 
 

int main(int argc, char** args){
    char** argv1 = (char**) malloc(sizeof(char*)*3);
    char** argv2 = (char**) malloc(sizeof(char*)*3);
    argv1[0] = "cat";
    argv1[1] = "exp/test.c";
    argv1[2] = NULL;

    argv2[0] = "grep";
    argv2[1] = "x";
    argv2[2] = NULL;
    
    int pipefd[2];
    if(pipe(pipefd) == -1){
        printf("ERROR\n");
        exit(1);
    }
    //pipefd[0] = read file descriptor
    //pipefd[1] = write file descriptor
    
    int pid1 = fork();
    int pid2;

    if(!pid1){
        //child
        //Close the read descriptor because we don't need it
        close(pipefd[0]);
        dup2(pipefd[1], STDOUT_FILENO);
        execvp(argv1[0], argv1);
    }
    else{
        //parent

        pid2 = fork();
        if(!pid2){
            //second child
            //Close the write descriptor because we don't need it
            close(pipefd[1]);
            dup2(pipefd[0], STDIN_FILENO);
            execvp(argv2[0], argv2);
        }
        else{
            close(pipefd[1]);
            int status2;
            waitpid(pid2, &status2, 0);
            printf("Finished 2\n");
        }

        int status1;
        waitpid(pid1, &status1, 0);
        printf("Finished 1\n");
    }
   return 0;
}
