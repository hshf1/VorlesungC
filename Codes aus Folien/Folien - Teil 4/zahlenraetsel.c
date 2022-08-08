// Folie 4 – zahlenraetsel.c
#include <stdio.h>

int Zahl = 1;

void ZahlenTest() {
    int Zahl =2;
    printf("%d", Zahl);
}

int main() {
    printf("%d", Zahl);
    int Zahl = 3;
    printf("%d", Zahl);
    ZahlenTest();
    printf("%d", Zahl);
    
    return 0;
}
