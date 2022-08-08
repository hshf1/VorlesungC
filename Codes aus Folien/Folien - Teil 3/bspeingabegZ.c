// Folie 3 - bspeingabegZ.c
 
#include <stdio.h>

int main(void){
    char zeichen;
  
    printf("Geben Sie eine Ziffer ein:\n");
 
    do {
    zeichen = getchar();
    // alternativ:
    // scanf("%c", &zeichen);
    } while (zeichen < '0'  || zeichen > '9');
    
    return 0;
}
