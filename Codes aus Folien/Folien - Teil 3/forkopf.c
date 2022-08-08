// Folie 3 - forkopf.c
 
#include <stdio.h>
 
int main(void) 
{
    int Count;
    int Ergebnis;  
 
    for (Count = 1; Count * Count <= 30; Count++)
    {
        Ergebnis = Count * Count;
        printf("Ergebnis: %d\n", Ergebnis);
    }
    
    return 0;
}
