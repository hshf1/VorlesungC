// Folie 3 - bspor.c

#include <stdio.h>

int main (void)
{
    int Zahl;

    printf("Geben Sie einen Wert zwischen 10 und 20 ein: " );
    scanf("%d", &Zahl);

    if ((Zahl < 10) || (Zahl > 20))
    {
        printf("Falsche Eingabe! \n");
    }
    
    return 0;
}
