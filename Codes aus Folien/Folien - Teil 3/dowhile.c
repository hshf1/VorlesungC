// Folie 3 - dowhile.c
 
#include <stdio.h>
 
int main(void){
    int Count;
    int Ergebnis;
 
    Count = 1;     //Initialisierung Schleifenvariable
    Ergebnis =0;
 
    do {
        Ergebnis = Ergebnis + Count;
        printf("Ergebnis %d: %d\n", Count, Ergebnis);
        Count++;   // Reinitialisierung der Schleifenvariablen
    }
    while (Count <=10);    // Ist die Bedingung erfüllt?
}
