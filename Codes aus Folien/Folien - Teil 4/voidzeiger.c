// Folie 4 – voidzeiger.c
#include <stdio.h>

int main(void) 
{
    void *Zeiger;
    int Wert;

    Wert = 10;
    Zeiger = &Wert;
    
    printf("pointer: Adr. %p, Wert %d\n", Zeiger, *(int *)Zeiger);
    
    return 0;
}
