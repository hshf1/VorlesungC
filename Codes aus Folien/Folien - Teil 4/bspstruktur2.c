// Folie 4 – bspstruktur2.c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    struct ARTIKEL {
        int Nummer;
        float Preis;
        char Name[10];
    } Art1 = {1, 1.50, "USB-Kabel"};

    printf("Artikel.name: %s\n", Art1.Name);
    printf("Artikel.name, 2. Buchstabe: %c", Art1.Name[1]);
    system("pause");
}
