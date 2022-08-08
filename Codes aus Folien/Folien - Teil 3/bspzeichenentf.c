// Folie 3 - bspzeichenentf.c
 
#include <stdio.h>
 
int main(void){
    char s[] = "Mein Text\n";
    char ch;
    int i = 0;
    
    do {
        ch = s[i]; // Zeichen holen
        i++; // Index 1 weiter
    } while ( ch != '\n' && ch != 0 );
   
    i--;
    s[i] = 0;
    
    return 0;
 }
