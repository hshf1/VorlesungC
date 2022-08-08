// Folie 3 - bspintFeld.c

#include <stdio.h>

int main(void){
    int feld[] = {1,2,3,4,6,7,8,9,3,4};
    int zaehler = 0;
    int i;

    for (i = 0; i < 10; i++)
    {
        if (feld[i] <= 4)
        zaehler++;
    }

    printf("%d", zaehler);
    
    return 0;
}
