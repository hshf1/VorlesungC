// Folie 4 – bspstruktur.c
#include <stdio.h>
#include <stdlib.h>

struct artikel_s{
    int Nummer;
    float Preis;
    char Name[10];
};

int main(void) {

    struct artikel_s Art1 = {1, 1.50, "USB-Kabel"};

    printf("Artikel-Name: %s", Art1.Name);
    printf("Artikel-Preis: %6.2f", Art1.Preis);
    system("pause");
    
    return 0;
}
