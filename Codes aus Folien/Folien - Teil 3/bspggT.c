// Folie 3 - bspggT.c

#include <stdio.h>

int main(void){
    int a = 56; 
    int b = 49;

    while (a != b)
    {
    // Re-Initialsierung von a oder b
    if (a >= b)
        a = a - b;
    else
        b = b - a; 
    }
    
    printf("Ergebnis: %d", a);
    
    return 0;
}
