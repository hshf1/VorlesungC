// Folie 3 - bspFeldweite.c

#include <stdio.h>
 
int main(void) 
{
    float fZahlFLOAT = 1.234567;
 
    printf("Format f   :#%f#\n",    fZahlFLOAT );
    printf("Format 10f :#%10f#\n",  fZahlFLOAT );
    printf("Format 010f:#%010f#\n", fZahlFLOAT );
    printf("Format 5f  :#%5f#\n",   fZahlFLOAT );
    return 0;
}
