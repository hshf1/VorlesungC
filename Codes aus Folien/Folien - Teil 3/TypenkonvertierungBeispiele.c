#include <stdio.h>

int main(void)
{
  Int    iZahl   = 2;
  double dResultat = 0;
  dResultat = 1 / 2			      * iZahl; // ERgebnis: 0.0
  dResultat = 1.0 / 2			    * iZahl; // Ergebnis: 1.0
  dResultat = 1 / 2.0			    * iZahl; // Ergebnis: 1.0
  dResultat = (double) l / 2	* iZahl; // Ergebnis: 1.0
  dResultat = l /(double)2		* iZahl; // Ergebnis: 1.0
  dResultat = (double) ( 1/ 2 * iZahl);// Ergebnis: 0.0

  dResultat = iZahl			      * 1/2;   // Ergebnis: 1.0
  dResultat = (double) 5      + 1/2;   // Ergebnis: 5.0

}
