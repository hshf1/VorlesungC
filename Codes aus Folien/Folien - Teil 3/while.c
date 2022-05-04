// Folie 3 - while.c
 
#include <stdio.h>
 
int main(void)
{
    int iCount;
    int iErgebnis;
 
    iCount = 1;  /* Initialisierung der Schleifenvariablen */
    iErgebnis = 0;
    
    /* Solange Bedingung erfüllt ist, führe aus... */
    while (iCount <= 10) 
    {
        iErgebnis = iErgebnis + iCount;
        printf("Schleifendurchlauf %d: %d\n", iCount, iErgebnis);
        iCount++;   /* Reinitialisierung der Schleifenvariable */
    }
    return 0;
}
