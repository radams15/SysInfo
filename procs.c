//
// Created by rhys on 08/10/2020.
//
#include <dirent.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#define PROC "/proc"

typedef struct Proc{
    unsigned int id;
} proc;

typedef struct Proc_List{
    unsigned int length;
    proc* list;
} proc_list;

int isnumber(const char* to_test){
    for(int i=0 ; i<strlen(to_test) ; i++){
        if(!isdigit(to_test[i])){
            return 0;
        }
    }

    return 1;
}



proc_list get_proc_nums(){
    DIR *dir;
    struct dirent *entry;

    proc_list out = {
            0,
            NULL
    };

    if (!(dir = opendir(PROC)))
        return out;

    while ((entry = readdir(dir)) != NULL) {

        if (entry->d_type == DT_DIR && isnumber(entry->d_name)){
            if ((strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) && !isnumber(entry->d_name)) {
                continue;
            }

            proc p = {
                    atoi(entry->d_name)
            };

            out.length++;
            if(out.list == NULL){
                out.list = malloc(out.length*sizeof(proc));
            }else{
                out.list = realloc(out.list, out.length*sizeof(proc));
            }

            out.list[out.length-1] = p;

        }
    }
    closedir(dir);

    return out;
}

void read_procs(){
    proc_list procs = get_proc_nums();

    for(int i=0 ; i<procs.length ; i++){
        printf("(%d) Proc %d\n", i, procs.list[i].id);
    }
}