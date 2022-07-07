// Folie 4 – felderstruktur2.c
#include <stdio.h>

typedef struct ARTIKEL {
	int Nummer;
	float Preis;
	char Name[10];
} artikel_t;

int main(void) {
    artikel_t ArtFeld[5] = {
        {123, 1.50, "USB-Kabel"},
        {124, 9.49, "Tastatur"},
        {125, 7.49, "Maus"},
        {126, 149.00, "Bildschirm"},
        {127, 14.49, "USB-Stick"},
    };
    int i;
    for (i = 0; i< 5; i++) {
        printf("%d \t%10.2f\t%s\n", ArtFeld[i].Nummer,
        ArtFeld[i].Preis, ArtFeld[i].Name);
    }
}
