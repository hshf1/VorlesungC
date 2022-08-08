// Folie 4 – bspstruktur3.c
#include <stdio.h>

int main(void) {
    float Preis = 1.50;
    typedef struct ARTIKEL {
        int Nummer;
        float *Preis;
        char Name[10];
    } artikel_t;

    artikel_t Art1 = {11231, &Preis, "USB-Kabel"};

    printf("Artikel.name: %s\n", Art1.Name);
    printf("Artikel.preis: %6.2f\n", *Art1.Preis);
    
    return 0;
}
