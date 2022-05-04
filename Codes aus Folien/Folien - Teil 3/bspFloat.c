// Folie 3 - bspFloat.c
 
#include <stdio.h>
 
int main(void)
{
    float fZahlFl   = 123.456789;
 
    printf("Float Format f        :#%f#\n",        fZahlFl);
    printf("Float Format .4f      :#%.4f#\n",      fZahlFl);
    printf("Float Format 8.4f     :#%8.4f#\n",     fZahlFl);
    printf("Float Format 10.4f    :#%10.4f#\n",    fZahlFl);
    return  0;
}
