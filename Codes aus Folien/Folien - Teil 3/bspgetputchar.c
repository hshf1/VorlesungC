// Folie 3 - bspgetputchar.c
 
#include <stdio.h>
 
int main(void)
{
    char c2, c3;
    printf("Zeichen 1 eingeben:");
    c2 = getchar(); /* Zeichen einlesen */
    printf("Eingabe des Zeichens: ");
 
    putchar(c2); /* Zeichen ausgeben */
    putchar('\n');
    printf("Ansi-Wert: %d \n", c2);
 
    printf("Zeichen 2 eingeben:");
    fflush(stdin); /* Tastaturpuffer löschen */
    c2 = getchar(); /* Zeichen einlesen */
 
    printf("Eingabe des Zeichens: ");
    putchar(c2);
    putchar('\n');
    printf("Ansi-Wert: %d \n", c2);
}
