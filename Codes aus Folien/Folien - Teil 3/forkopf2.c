// Folie 3 - forkopf2.c
 
#include <stdio.h>
 
int main(void) 
{
    int Count;
    int Ergebnis;  
 
    Ergebnis = 50;
 
    for (Count = 0;  Ergebnis <= 75; Ergebnis = ++Count * 5 + 50)
    {
        printf("Ergebnis %d: %d\n", Count, Ergebnis);
    }
}
