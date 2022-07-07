// Folie 4 – bspspeicher.c
#include <stdio.h>
#include <stdlib.h>

int main(){

    int *ptr;
    ptr = NULL;
    printf("Pointer zu Anfang:\n");
    printf("   Adr: \t%p\n", ptr);

    ptr = (int *) malloc( 10*sizeof( int ) );

    printf("Pointer nach Speicherzuteilung:\n");
    printf("   Adr: \t%p\n", ptr);
    printf("   Wert: \t%d\n", *ptr);

    if (ptr != NULL) {
        *ptr = 99;
        printf("Pointer nach Zuweisung:\n");
        printf("   Adr: \t%p\n", ptr);
        printf("   Wert: \t%d\n", *ptr);

        free(ptr);
        printf("Pointer nach free:\n");
        printf("   Adr: \t%p\n", ptr);
        printf("   Wert: \t%d\n", *ptr);

        ptr = NULL;
        printf("Pointer nach löschen:\n");
        printf("   Adr: \t%p\n", ptr);
    }
}
