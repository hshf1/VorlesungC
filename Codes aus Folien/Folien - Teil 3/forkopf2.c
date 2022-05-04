// Folie 3 - forkopf2.c
 
#include <stdio.h>
 
int main(void) 
{
    int iCount;
    int iErgebnis;  
 
    iErgebnis = 50;
 
    for (iCount = 0;  iErgebnis <= 75; iErgebnis = ++iCount * 5 + 50)
    {
        printf("Ergebnis %d: %d\n", iCount, iErgebnis);
    }
}
