// Folie 4 – funktionsprototypen2.c
#include <stdio.h>

int eingabe (void) {
    int Zahl;
    scanf("%d",&Zahl);
    return Zahl;
}

void ausgabe (int Wert) {
    printf("%d",Wert);
}

int main(void) {
    int Zahl; 
    printf("Gebe eine Zahl ein: ");
    Zahl = eingabe();
    ausgabe(Zahl);
}
