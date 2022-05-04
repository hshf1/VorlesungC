// Folie 3 - bspforschachtel.c
 
#include <stdio.h>
 
int main (void)
{
    int iCount;
    int iMal;
 
    // Das kleine ein-mal-eins
 
    for (iCount = 1; iCount <= 10; iCount++){
        for (iMal = 1; iMal <= 10; iMal++){
            printf("%d * %d = %d\n", iCount, iMal, iCount*iMal);
        }
    }
}
