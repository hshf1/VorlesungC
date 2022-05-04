// Folie 3 - bspanweisungsleiter.c

#include <stdio.h>

int main (void)
{
    int iZahlA;
    int iZahlB;
    int iCheck; /* Anzahl der eingelesenen Zeichen */

    printf("Ganzzahl 1 soll durch Ganzzahl 2 geteilt werden.");
    printf("Geben Sie zwei Ganzzahlen ein. Format:Z1 Z2");
    iCheck = scanf("%d %d",&iZahlA, &iZahlB);
    printf("Check = %d\n", iCheck);
   
    if (iCheck == 2) {
        /* Es sind zwei Zahlen gelesen worden. */
        printf("%d / %d = %d\n", iZahlA, iZahlB, iZahlA / iZahlB);
    } else if (iCheck == 1) { 
        /* Die erste Zahl wurde korrekt gelesen, die zweite nicht. */
        printf("Der zweite Wert ist nicht korrekt.\n");
    } else {
        printf("Keine korrekte Eingabe\n");
    }
    return 0;
}
