// Folie 4 – funktionsprototypen.c
#include <stdio.h>

int eingabe(void);
void ausgabe(int);

int main(void) {
    int Zahl;
    printf("Gebe eine Zahl ein: ");
    Zahl = eingabe();
    ausgabe(Zahl);
    
    return 0;
}
int eingabe (void) {
    int Zahl;
    scanf("%d",&Zahl);
    return Zahl;
}
void ausgabe (int Wert) {
    printf("%d",Wert);
}
