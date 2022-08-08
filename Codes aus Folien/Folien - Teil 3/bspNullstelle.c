// Folie 3 - bspNullstelle.c

#include <stdio.h>
#include <math.h>

int main(void){
    float x = 2; // Startwert
    float y; // Funktionswert y an der Stelle x
    float y_; // Ableitung an der Stelle x
    
    do {
        y = pow(x,2) - 7;
        y_ = 2*x;
        x = x - y/y_;
    } while (y > 0.01 || y < -0.01);
    
    printf("Nullstelle: %.4f", x);
    
    return 0;
}
