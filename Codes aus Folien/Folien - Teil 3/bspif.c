// Folie 3 - bspif.c

#include <stdio.h>

int main(void)
{
    int Max           = 0;
    int Scanresult    = 0;
   
    printf("Geben Sie eine Ganzzahl ein ");
    Scanresult = scanf("%d", &Max);
    if (Scanresult == 0) 
    {
        printf("Fehleingabe: Es wurde keine Ganzzahl eingegeben.\n\n");
    }
}
