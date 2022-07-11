// Folie 3 - bspanweisungsleiter.c

#include <stdio.h>

int main (void)
{
    int ZahlA;
    int ZahlB;
    int Check; /* Anzahl der eingelesenen Zeichen */

    printf("Ganzzahl 1 soll durch Ganzzahl 2 geteilt werden.");
    printf("Geben Sie zwei Ganzzahlen ein. Format:Z1 Z2");
    Check = scanf("%d %d",&ZahlA, &ZahlB);
    printf("Check = %d\n", Check);
   
    if (Check == 2) {
        /* Es sind zwei Zahlen gelesen worden. */
        printf("%d / %d = %d\n", ZahlA, ZahlB, ZahlA / ZahlB);
    } else if (Check == 1) { 
        /* Die erste Zahl wurde korrekt gelesen, die zweite nicht. */
        printf("Der zweite Wert ist nicht korrekt.\n");
    } else {
        printf("Keine korrekte Eingabe\n");
    }
}
