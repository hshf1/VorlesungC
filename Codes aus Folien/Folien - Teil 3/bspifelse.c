// Folie 3 - bspifelse.c

#include <stdio.h>
#include <stdlib.h>

int main (void)
{
    int iZahl1 =0;
    int iZahl2 =0;
   
    printf("Zwei Ganzzahlen eingeben. Format: ""Z1 Z2"": ");
    scanf("%d %d",&iZahl1, &iZahl2);
   
    if (iZahl1 >= iZahl2) {
        printf("Erste Zahl ist groesser gleich zweiter  Zahl\n");
    }
    else { 
        printf("Erste Zahl ist kleiner als zweite Zahl\n");
    }
    system("Pause");
    return 0;
}
