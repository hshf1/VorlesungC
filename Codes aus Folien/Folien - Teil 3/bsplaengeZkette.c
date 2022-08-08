// Folie 3 - bsplaengeZkette.c
 
#include <stdio.h>
 
int main(void){
    char s[] = "Mein Text";
    int len = 0;
 
    while (s[len] != 0 )
    {
        len++;
    }
    
    printf("Anzahl Zeichen: %d\n", len);
    
    return 0;
}
