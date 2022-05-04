// Folie 3 - forrumpf2.c
 
#include <stdio.h>
 
int main(void)
{
    int iCount;
 
    iCount  = 20;    
    
    for ( ; iCount > 0; ) 
    {
        printf("Ergebnis %d\n", iCount);
        iCount = iCount - 2;
    }
}
