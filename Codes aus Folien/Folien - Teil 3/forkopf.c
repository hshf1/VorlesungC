// Folie 3 - forkopf.c
 
#include <stdio.h>
 
int main(void) 
{
    int iCount;
    int iErgebnis;  
 
    for (iCount = 1; iCount * iCount <= 30; iCount++)
    {
        iErgebnis = iCount * iCount;
        printf("Ergebnis: %d\n", iErgebnis);
    }
}
