// Folie 4 – felderstruktur.c
#include <stdio.h>
#include <string.h>
typedef struct ARTIKEL {
    int Nummer;
    float Preis;
    char Name[10];
} artikel_t;	

int main(void) {
    artikel_t ArtFeld[5];
    int i; // INITAILISIERUNG
    char Eingabe[10] = "DEFAULT";
    for (i = 0; i < 5; i++) {
        ArtFeld[i].Nummer = 11231 + i;
        ArtFeld[i].Preis = 0.00;
        fflush(stdin);
        fgets(Eingabe,10,stdin);
        strcpy(ArtFeld[i].Name, Eingabe);
        printf("%d \t %5.2f \t %s\n", ArtFeld[i].Nummer, ArtFeld[i].Preis,
         ArtFeld[i].Name);
    }
}
