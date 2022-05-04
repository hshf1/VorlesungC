// Folie 3 - doubleeinlesen.c
 
#include <stdio.h>
 
int main(void)
{
    double dZahl = 0.0;
 
    printf("Bitte geben Sie eine Zahl ein: ");
    scanf("%f", &dZahl );
    printf("Zahl %f\n", dZahl );
    return 0;
}
