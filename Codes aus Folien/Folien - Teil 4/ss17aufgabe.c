// Folie 4 – ss17aufgabe.c
#include <stdio.h>

int main(void) {
    int feld[] = {10, 20, 30, 40, 50};
    int *pF = feld;
    printf("%d\n", *pF++); 
    printf("%d\n%d", *pF + 2, *(pF + 2)); 
}
