// Folie 4 – zeigeralsparam.c
#include <stdio.h>

void malZwei(float *Zahl) {
    *Zahl = (*Zahl) * 2; 
}

int main(void) {
    float Wert;
    Wert = 2.5;
    printf("%f\n", Wert); 
    malZwei(&Wert);
    printf("%f\n", Wert); 
   
    return 0;
}
