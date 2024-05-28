// Folie 4 – StrukturenKopieren.c
#include <stdio.h>
typedef struct ARTIKEL {
	int Nummer;
	float Preis;
	char Name[11];
} artikel_t;


int main(void) {
    artikel_t ArtFeld[5] = {{1, 1.10, "Leer"}};
    int i;
  
    for (i = 0; i< 5; i++) {
        printf("%d \t%10.2f\t%s\n", ArtFeld[i].Nummer,
        ArtFeld[i].Preis, ArtFeld[i].Name);
    }


    for (i = 1; i< 5; i++) ArtFeld[i]=ArtFeld[0];

    for (i = 0; i< 5; i++) {
        printf("%d \t%10.2f\t%s\n", ArtFeld[i].Nummer,
        ArtFeld[i].Preis, ArtFeld[i].Name);
    }


    return 0; 
}

