// Folie 3 - forrumpf2.c
 
#include <stdio.h>
 
int main(void)
{
    int Count;
 
    Count  = 20;    
    
    for ( ; Count > 0; ) 
    {
        printf("Ergebnis %d\n", Count);
        Count = Count - 2;
    }
}
