// Folie 3 - scanf.c
 
#include <stdio.h>
#include <stdlib.h>
 
int main(void)
{
    char cZ1 = '0';
    int iErg;
    
    iErg = scanf("das muss exakt stimmen: %c", &cZ1);
    printf("Eingabe: %c\n", cZ1 );
    printf("Zuweisungen: %d\n", iErg);
    system("pause");
    return 0;
}
