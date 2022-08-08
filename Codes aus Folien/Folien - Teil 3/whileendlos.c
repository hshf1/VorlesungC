// Folie 3 - whileendlos.c
 
#include <stdio.h>
 
int main(void)
{
    long Zaehler = 0;
 
    while ( 1 ) /* No way to escape */
    {  
        printf("Diese Meldung endlos ausgeben%ld\n", Zaehler);
        Zaehler++; 
    }
    
    printf("Diese Zeile wird niemals erreicht werden");
    
    return 0;
}
