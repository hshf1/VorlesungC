// Folie 4 – arrayfrage.c
#include <stdio.h>

int main() {
    int Feld[5] = {3,2,1}; //Array mit 5 Werten
    int i; 
    for (i=0; i<5;i++) {
        Feld[i] = Feld[i+1];
        printf("%d ", Feld[i]);
    }
    
    return 0;
}
