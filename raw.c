#include <stdio.h>
#include <stdint.h>
#include <string.h>

#define MEM_SIZE 4096
int32_t mem[MEM_SIZE];
void run(){
    char comm[4];
    scanf("%s", comm);
    if(strcmp(comm, "lw") == 0){
        printf("lw!!!\n");
        
    }
    else if(strcmp(comm, "lh") == 0){
        printf("lh!!!\n");
    }
    else if(strcmp(comm, "lhu") == 0){
        printf("lhu!!!\n");
    }
    else if(strcmp(comm, "lb") == 0){
        printf("lb!!!\n");
    }
    else if(strcmp(comm, "lbu") == 0){
        printf("lbu!!!\n");
    }
    else if(strcmp(comm, "sw") == 0){
        printf("sw!!!\n");
    }
    else if(strcmp(comm, "sh") == 0){
        printf("sh!!!\n");
    }
    else if(strcmp(comm, "sb") == 0){
        printf("sb!!!\n");
    }
}

int main(){
    run();
    return 0;
}