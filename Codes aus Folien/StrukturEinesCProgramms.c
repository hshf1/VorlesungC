//Präsentation 2
//Folie 15
#include <stdio.h>

const double dMWST = 0.19;
int iPreis, iAnzahl;

int function1 (int iParam1, int  iParam2)
{
   int iWert = 0;
   iWert = iParam1 * iParam2*dMWST;
   anweisung2;

   return iWert;
}

int main  (void)
{
   int iErg = 0;
   iPreis = 2;
   iAnzahl = 4;
   iErg = function1(iPreis, iAnzahl);
   return 0;
}
