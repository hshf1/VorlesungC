// Folie 3 - kontrollsprung.c

#include <stdio.h>
 
int main(void)
{
    int Zahl; int Ergebnis = 0;
 
    while (1)  {    //potenzial unendliche Schleife!!!
        printf("Bitte geben Sie einen Wert ein: "); 
        scanf("%d", &Zahl);
        if (Zahl == 0)
        {
            break; // Abbruch der Schleife
        } 
        else 
        {
            Ergebnis += Zahl;
        }
    }
    printf("\nDie Summe betraegt: %d\n", Ergebnis);
    
    return 0;
}
