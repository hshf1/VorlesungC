// Folie 4 – zeiger.c
#include <stdio.h>

int main(void) {
    // definieren
    int *zeigerInt;
    int Summe;
    // initialisieren
    Summe = 12345;
    zeigerInt = &Summe;
    printf("Adresse, die der Zeiger enthält: %p\n", zeigerInt);
    // Dereferenzieren
    printf("Wert der Variablen, auf die gezeigt wird: %d\n", *zeigerInt);
}
