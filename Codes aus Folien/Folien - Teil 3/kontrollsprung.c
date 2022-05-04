// Folie 3 - kontrollsprung.c

#include <stdio.h>
 
int main(void)
{
    int iZahl; int iErgebnis = 0;
 
    while (1)  {    //potenzial unendliche Schleife!!!
        printf("Bitte geben Sie einen Wert ein: "); 
        scanf("%d", &iZahl);
        if (iZahl == 0)
        {
            break; // Abbruch der Schleife
        } 
        else 
        {
            iErgebnis += iZahl;
        }
    }
    printf("\nDie Summe betraegt: %d\n", iErgebnis);
}
