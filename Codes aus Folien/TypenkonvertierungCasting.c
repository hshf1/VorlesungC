#include <stdio.h>

const double dPI = 3.14159265;
int main(void)
{
   int iUmfang =0; //Integerzahl
   double dPi =3.14; //Fließkommazahl

   iUmfang = 2 * dPi *1;

   int iZahl = 2; //Integerzahl
   double dResultat = 0; //Fließkommazahl

   dResultat = (double) 1/2 * iZahl; // Aus Integerzahl wird Fließkommazahl 1.0 -> rechnet mit Fließkommazahlen weiter
}
