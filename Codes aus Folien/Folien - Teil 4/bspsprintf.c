// Folie 4 – bspsprintf.c
#include <stdio.h>

int main(void) {
    int i = 32768;
    char zk[6];
    
    sprintf(zk, "%d", i);
    printf("Eine Zahl:\n");
    printf("\t%d\n", i);
    printf("4. Ziffer von links:\n");
    printf("\t%c", zk[3]);
    
    return 0;
}
