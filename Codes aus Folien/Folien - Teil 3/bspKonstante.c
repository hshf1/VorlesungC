// Folie 3 - bspKonstante.c

#include <stdio.h>
 
const double PI = 3.14159265;
 
int main(void)
{
    double Radius = 3.4;
    double Umfang = 0.0;
    double Flaeche = 0.0;

    Umfang = 2 * PI * Radius;
    Flaeche = PI * (Radius * Radius);
}
