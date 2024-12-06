// Folie 4 – zketteaufgabe.c
#include <stdio.h>
#include <string.h>

int main(void) {
    char *Text []   = {"Auto", "Hund", "Haus"}; //Stringtabelle Typ 1
    char Text2 [3][5] = {"Auto", "Hund", "Haus"}; //Stringtabelle Typ 2
    
    printf("%s\n", Text[1]+1);
    printf("%s\n", Text2[1]+1);
    
    return 0;
}
