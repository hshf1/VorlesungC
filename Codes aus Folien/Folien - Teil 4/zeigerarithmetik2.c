// Folie 4 - zeigerarithmetik2.c
#include <stdio.h>

int main(void) {
    int Feld[] = {1,2,3};
    int *pointer = Feld;

    printf("%d\n", *pointer);
    printf("%d\n", *(pointer + 1));
    printf("%d\n", *(pointer++));
    printf("%d\n", *(++pointer));
    printf("%d\n", *(pointer - 1));
    
    return 0;
}
