// Folie 3 - bspor.c

#include <stdio.h>

int main (void)
{
    int iZahl;

    printf("Geben Sie einen Wert zwischen 10 und 20 ein: " );
    scanf("%d", &iZahl);

    if ((iZahl < 10) || (iZahl > 20))
    {
        printf("Falsche Eingabe! \n");
    }
}
