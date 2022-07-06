// Folie 4 – arrayinit2.c
#include <stdio.h>
#define WOCHEN 4
#define TAGE 7
float Sonnenaufgang [WOCHEN] [TAGE] = {
    {6.01, 5.57, 5.56, 5.54, 5.55, 5.51, 5.36},
    {5.47, 5.46, 5.44, 5.43, 5.41, 5.40, 5.39},
    {5.37, 5.36, 5.34, 5.33, 5.32, 5.31, 5.30},
    {5.28, 5.27, 5.26, 5.25, 5.24, 5.23, 5.23}
};

int main(void) {
    int Zeile, Spalte;
    printf("Tag   Mo   Di   Mi   Do   Fr   Sa   So");
    for (Zeile = 0; Zeile < WOCHEN; Zeile++) {
        printf("\nWoche%d", Zeile);
        for (Spalte=0; Spalte < TAGE; Spalte++) {
            printf(" %.2f", Sonnenaufgang[Zeile] [Spalte]);
            }
    }
}
