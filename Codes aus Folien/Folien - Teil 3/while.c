// Folie 3 - while.c
 
#include <stdio.h>
 
int main(void)
{
    int Count;
    int Ergebnis;
 
    Count = 1;  /* Initialisierung der Schleifenvariablen */
    Ergebnis = 0;
    
    /* Solange Bedingung erfüllt ist, führe aus... */
    while (Count <= 10) 
    {
        Ergebnis = Ergebnis + Count;
        printf("Schleifendurchlauf %d: %d\n", Count, Ergebnis);
        Count++;   /* Reinitialisierung der Schleifenvariable */
    }
    
    return 0;
}
