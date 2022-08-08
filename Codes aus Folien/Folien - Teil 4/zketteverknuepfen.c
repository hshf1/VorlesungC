// Folie 4 – zketteverknuepfen.c
#include <stdio.h>
#include <string.h>

int main(void) {
    char   Eisbaer[10] = {"Eis"};
    size_t Laenge, NewLaenge;
    int    Groesse;
	
    Laenge    = strlen(Eisbaer);
    NewLaenge = strlen("baer");
    Groesse    = sizeof(Eisbaer)/ sizeof(char);
    if (Groesse >= (Laenge + NewLaenge + 1)) {
        strcat(Eisbaer, "baer");
        puts(Eisbaer);
    } else {
        puts("Passt nicht");    
    } 
	
    return 0;
}
