// Folie 3 - dowhile.c
 
#include <stdio.h>
 
int main(void){
    int iCount;
    int iErgebnis;
 
    iCount = 1;     //Initialisierung Schleifenvariable
    iErgebnis =0;
 
    do {
        iErgebnis = iErgebnis + iCount;
        printf("Ergebnis %d: %d\n", iCount, iErgebnis);
        iCount++;   // Reinitialisierung der Schleifenvariablen
    }
    while (iCount <=10);    // Ist die Bedingung erfüllt?
    return 0;
}
