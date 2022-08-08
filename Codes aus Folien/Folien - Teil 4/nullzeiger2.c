// Folie 4 – nullzeiger2.c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int *Zeiger = NULL;
    if (!Zeiger) { 
        printf("Keine gueltige Adresse\n");
    }
    else {
        *Zeiger = 3;
    }
    
    system("Pause");
    return 0;
}
