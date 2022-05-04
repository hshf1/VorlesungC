// Folie 3 - bspnot.c

#include <stdio.h>

int main (void)
{
    int iZahl;

    printf("Bitte geben Sie eine Ganzzahl ein: ");
    scanf("%d", &iZahl);

    if (!(iZahl == 0))
    {
        printf("Die Zahl ist ungleich Null\n");
    }
    if (iZahl != 0)
    {
        printf("Die Zahl ist ungleich Null\n");
    }
    return 0;
}
