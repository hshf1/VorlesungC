// Folie 3 - bspInt.c
 
#include <stdio.h>
 
int main(void)
{
    const int iZahlInt = 9876; 
 
    printf("Integer Format d    :#%d#\n",     iZahlInt);
    printf("Integer Format 8d   :#%8d#\n",    iZahlInt);
    printf("Integer Format +8d  :#%+8d#\n",   iZahlInt);
    printf("Integer Format -+8d :#%-+8d#\n",  iZahlInt);
    printf("Integer Format -8d  :#%-8d#\n",   iZahlInt);
    printf("Integer Format 8.5d :#%8.5d#\n",  iZahlInt);
    printf("Integer Format 10.8d:#%10.8d#\n", iZahlInt);
    return  0;
}
