// Folie 2 – strukturcprog.c

#include <stdio.h>

const double MWST = 0.19;
int Preis, Anzahl;

int function1 (int Param1, int  Param2)
{
   int Wert = 0;
   Wert = Param1 * Param2*MWST;
   //anweisung2;

   return Wert;
}

int main (void)
{
   int Erg = 0;
   Preis = 2;
   Anzahl = 4;

   Erg = function1(Preis, Anzahl);
}
