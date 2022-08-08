// Folie 3 - scanf.c
 
#include <stdio.h>
#include <stdlib.h>
 
int main(void)
{
    char Z1 = '0';
    int Erg;
    
    Erg = scanf("das muss exakt stimmen: %c", &Z1);
    printf("Eingabe: %c\n", Z1 );
    printf("Zuweisungen: %d\n", Erg);
    system("pause");
    
    return 0;
}
