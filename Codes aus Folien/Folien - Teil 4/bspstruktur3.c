// Folie 4 – bspstruktur3.c
#include <stdio.h>


typedef struct artikel_s {
    int Nummer;
    float *Preis;
    char Name[10];
} artikel_t;


int main(void) {
    float Preis = 1.50;
    artikel_t Art1 = {11231, &Preis, "USB-Kabel"};

    printf("Artikelname: %s\n", Art1.Name);
    printf("Artikelpreis: %6.2f\n", *Art1.Preis);
    
    return 0;
}
