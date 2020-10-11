#include <stdio.h>

#include "procs.c"

int main() {
    proc_list procs = read_procs();

    proc* p = NULL;
    for(int i=0 ; i < procs.length ; i++){
        p = &procs.list[i];
        printf("Proc %d\n\tUser: %s\n\tType: %s\n\n", p->pid, p->user, p->command);
    }

    free_proc_list(&procs);

    return 0;
}
