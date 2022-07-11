// Folie 3 - bspifelse.c

#include <stdio.h>
#include <stdlib.h>

int main (void)
{
    int Zahl1 =0;
    int Zahl2 =0;
   
    printf("Zwei Ganzzahlen eingeben. Format: ""Z1 Z2"": ");
    scanf("%d %d",&Zahl1, &Zahl2);
   
    if (Zahl1 >= Zahl2) {
        printf("Erste Zahl ist groesser gleich zweiter  Zahl\n");
    }
    else { 
        printf("Erste Zahl ist kleiner als zweite Zahl\n");
    }
    system("Pause"); //Windows
}
