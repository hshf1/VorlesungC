// Folie 4 – bspstruktur2.c
#include <stdio.h>
#include <stdlib.h>

struct artikel_s {
    int Nummer;
    float Preis;
    char Name[10];
} Art1 = {1, 1.50, "USB-Kabel"};

int main(void) {
    printf("Artikelname: %s\n", Art1.Name);
    printf("Artikelname, 2. Buchstabe: %c", Art1.Name[1]);
    system("pause");
    
    return 0;
}
