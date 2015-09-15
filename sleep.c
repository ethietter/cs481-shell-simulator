#include <unistd.h>
#include <stdio.h>

int main(int argc, char* argv[]){
    long unsigned int i;
    //while(i < 9000000000){
    //    i++;
    //}
    for(i = 0; i < 9; i++){
        //printf("Sleep: %lu\n", i);
        sleep(1);
    }
    return 0;
}
