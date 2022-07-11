// Folie 3 - modifier#*.c
 
#include <stdio.h>
 
int main(void)  
{
    printf("Dezimalpunkt: |%#f|\n", 100);
    printf("Dezimalpunkt: |%.0f|\n", 3.77);
    printf("Dezimalpunkt: |%#.0f|\n", 3.77);
    printf("Hexadezimalwert ausgeben: |%#x|\n",  0x65);
    printf("Minimalwert und Genauigkeit: |%*.*f|\n", 15, 10, 123.456789);
}
