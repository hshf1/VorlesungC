// Folie 3 - bspnot.c

#include <stdio.h>

int main (void)
{
    int Zahl;

    printf("Bitte geben Sie eine Ganzzahl ein: ");
    scanf("%d", &Zahl);

    if (!(Zahl == 0))
    {
        printf("Die Zahl ist ungleich Null\n");
    }
    if (Zahl != 0)
    {
        printf("Die Zahl ist ungleich Null\n");
    }
}
