// Folie 3 - bspFeldweite.c

#include <stdio.h>
 
int main(void) 
{
    float ZahlFLOAT = 1.234567;
 
    printf("Format f   :#%f#\n",    ZahlFLOAT );
    printf("Format 10f :#%10f#\n",  ZahlFLOAT );
    printf("Format 010f:#%010f#\n", ZahlFLOAT );
    printf("Format 5f  :#%5f#\n",   ZahlFLOAT );
    
    return 0;
}
