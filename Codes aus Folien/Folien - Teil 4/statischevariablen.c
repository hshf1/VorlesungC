// Folie 4 – statischevariablen.c
#include <stdio.h>

int berechne(int);

int main(void) {
    int Erg;
    Erg = berechne(3);
    Erg = berechne(4);
    
    return 0;
}

int berechne(int Wert) {
    int Ergebnis;
    static int Zahl = 0;
    Ergebnis = Wert * 3;
    Zahl++;
    printf("Aufr.Nr.:%d\n",Zahl);
    
    return Ergebnis;
}
