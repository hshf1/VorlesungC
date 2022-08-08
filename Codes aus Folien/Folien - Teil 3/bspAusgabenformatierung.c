// Folie 3 - bspAusgabenformatierung.c

#include <stdio.h>

int main(void)
{
    int ZahlINT = 0x8E;
    short int ZahlNEG = -2;
    float ZahlFLOAT = 3.467;

    printf("Integer Format      d: #%d#\n", ZahlINT);
    printf("Integer Format      c: #%c#\n", ZahlINT);
    printf("Integer Format      x: #%x#\n", ZahlINT);
    printf("Integer Format      X: #%X#\n", ZahlINT);
    printf("Neg Integer Format  d: #%d#\n", ZahlNEG);
    printf("Neg Integer Format  u: #%u#\n", ZahlNEG);
    printf("Integer Format      X: #%X#\n", ZahlNEG);
    printf("Float Format        f: #%f#\n", ZahlFLOAT);
    
    return 0;
}
