// Folie 3 - bspfor.c
 
#include <stdio.h>
 
int main (void)
{
    int iCount;
    float fZaehler;
 
    for (iCount = 0; iCount < 10; iCount++) {
        printf("Schleifendurchlauf %d\n", iCount);
    }
 
    for (iCount = 10; iCount > 0; iCount -= 1) {
        printf("Schleifendurchlauf %d\n", iCount);
    }
 
    for (fZaehler = 5.0; fZaehler > 0.0; fZaehler -= 0.25) {
        printf("Schleifendurchlauf %.2f\n", fZaehler);
    }
}
