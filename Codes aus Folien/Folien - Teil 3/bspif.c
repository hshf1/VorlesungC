// Folie 3 - bspif.c

#include <stdio.h>

int main(void)
{
    int iMax           = 0;
    int iScanresult    = 0;
   
    printf("Geben Sie eine Ganzzahl ein ");
    iScanresult = scanf("%d", &iMax);
    if (iScanresult == 0) 
    {
        printf("Fehleingabe: Es wurde keine Ganzzahl eingegeben.\n\n");
    }
}
