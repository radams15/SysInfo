//
// Created by rhys on 08/10/2020.
//
#include <dirent.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#define PROC "/proc"

typedef struct Proc{
    char* user;
    unsigned int pid;
    unsigned int cpu_perc;
    unsigned int mem_perc;
    char* command;
} proc;

typedef struct Proc_List{
    unsigned int length;
    proc* list;
} proc_list;

proc split_ps(char* in){
    char *token = strtok(in, " \t");
    int i = 0;

    proc out;

    while (token) {
        if(i == 0){
            unsigned int len = strlen(token)+1;
            out.user = calloc(len, sizeof(char));
            strncpy(out.user, token, len);
        }if(i == 1){
            out.pid = atoi(token);
        }else if(i == 2){
            out.cpu_perc = atof(token);
        }else if(i == 3){
            out.mem_perc = atof(token);
        }else if(i == 10){
            int len = strlen(token);
            out.command = calloc(len, sizeof(char));
            strcpy(out.command, token);

            if(out.command[len - 1] == '\n') {
                out.command[len - 1] = 0;
            }
            break;
        }

        if(i != 9) {
            token = strtok(NULL, " \t");
        }else{
            token = strtok(NULL, "");
        }

        i++;
    }

    return out;
}

void free_proc_list(proc_list* in){
    for(int p=0 ; p < in->length ; p++){
        free(in->list[p].command);
        free(in->list[p].user);
    }
}

proc_list read_procs(){
    FILE *fp;
    char path[1035];

    proc_list out = {
            0,
            NULL
    };

    fp = popen("/usr/bin/ps aux --sort=-pcpu", "r");
    if (fp == NULL) {
        printf("Failed to run command\n" );
        exit(1);
    }

    int line = 0;
    while (fgets(path, sizeof(path), fp) != NULL) {
        if(line == 0){ line++; continue;}

        proc p = split_ps(path);

        if(out.list == NULL){
            out.list = malloc(sizeof(p));
        }else{
            out.list = realloc(out.list, (strlen(out.list->user)+strlen(out.list->command))*sizeof(p) );
        }

        out.list[out.length] = p;

        out.length++;
    }

    pclose(fp);

    return out;
}