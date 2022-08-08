// Folie 4 – zeigerraetsel.c
#include <stdio.h>
int main(void){
    int *zeigerInt;    //Zeiger auf Integervariable
    int *zeigerInt2;   //Zeiger auf Integervariable
    short Summe = 2;
   
    zeigerInt = &Summe;
    zeigerInt2 = zeigerInt;
    (*zeigerInt2)+=2;
    (*zeigerInt)--;
    
    printf("Summe: %d\n", Summe);
    
    return 0;
}
