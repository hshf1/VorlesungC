// Folie 3 - bspKonstante.c

#include <stdio.h>
 
const double dPI = 3.14159265;
 
int main(void)
{
    double dRadius = 3.4;
    double dUmfang = 0.0;
    double dFlaeche = 0.0;

    dUmfang = 2 * dPI * dRadius;
    dFlaeche = dPI * (dRadius * dRadius);
    return 0;
}
