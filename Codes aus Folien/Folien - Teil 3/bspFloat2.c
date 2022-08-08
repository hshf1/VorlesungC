// Folie 3 - bspFloat2.c
 
#include <stdio.h>
 
int main(void)
{
    float ZahlFl   = 123.456789;
 
    printf("Float Format f        :#%f#\n",        ZahlFl);
    printf("Float Format .4f      :#%.4f#\n",      ZahlFl);
    printf("Float Format 8.4f     :#%8.4f#\n",     ZahlFl);
    printf("Float Format 10.4f    :#%10.4f#\n",    ZahlFl);
    printf("Float Format 10.4g    :#%10.4g#\n",    ZahlFl);
    printf("Float Format +10.4f   :#%+10.4f#\n",   ZahlFl);
    printf("Float Format -10.4f   :#%-10.4f#\n",   ZahlFl);
    printf("Float Format +010.4f  :#%+010.4f#\n",  ZahlFl);
    printf("Float Format -010.4f  :#%-010.4f#\n",  ZahlFl);
    printf("Float Format -+010.4f :#%-+010.4f#\n", ZahlFl);
    
    return 0;
}
