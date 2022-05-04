// Folie 3 - bspAusgabenformatierung.c

#include <stdio.h>

int main(void)
{
    int iZahlINT = 0x8E;
    short int sZahlNEG = -2;
    float fZahlFLOAT = 3.467;

    printf("Integer Format      d: #%d#\n", iZahlINT);
    printf("Integer Format      c: #%c#\n", iZahlINT);
    printf("Integer Format      x: #%x#\n", iZahlINT);
    printf("Integer Format      X: #%X#\n", iZahlINT);
    printf("Neg Integer Format  d: #%d#\n", sZahlNEG);
    printf("Neg Integer Format  u: #%u#\n", sZahlNEG);
    printf("Integer Format      X: #%X#\n", sZahlNEG);
    printf("Float Format        f: #%f#\n", fZahlFLOAT);
}
