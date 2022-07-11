// Folie 3 - bspfor.c
 
#include <stdio.h>
 
int main (void)
{
    int Count;
    float Zaehler;
 
    for (Count = 0; Count < 10; Count++) {
        printf("Schleifendurchlauf %d\n", Count);
    }
 
    for (Count = 10; Count > 0; Count -= 1) {
        printf("Schleifendurchlauf %d\n", Count);
    }
 
    for (Zaehler = 5.0; Zaehler > 0.0; Zaehler -= 0.25) {
        printf("Schleifendurchlauf %.2f\n", Zaehler);
    }
}
