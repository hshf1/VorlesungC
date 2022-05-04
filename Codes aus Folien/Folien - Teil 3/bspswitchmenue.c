// Folie 3 - bspswitchmenue.c
 
#include <stdio.h>
 
int main (void)
{
    char cEingabe;

    // vorrangegangener Code ...

    scanf("%c", &cEingabe);

    switch (cEingabe)
    {
        case 'E': printf("Neuen Eintrag einfügen"); break;
        case 'L': printf("Eintrag löschen");        break;
        case 'S': printf("Telefonnummer suchen");   break;
        case 'A': printf("Alle Einträge anzeigen"); break;
        case 'B': printf("Programm-Ende");          break;
        default:  printf("Falsche Eingabe");
    }

    // ... nachfolgender Code
}
