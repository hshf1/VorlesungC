// Folie 3 - iftest.c
 
#include <stdio.h>
 
int main (void)
{
    int a = 1;
    
    // Bedingung 1
    if (a+1>=2 && a<=2*a-1) printf("TRUE\n");
    else printf("FALSE\n");
    
    // Bedingung 2
    if (a+1<<1==4) printf("TRUE\n");
    else printf("FALSE\n");
    
    // Bedingung 3
    if (++a==2 && a*2==2) printf("TRUE\n");
    else printf("FALSE\n");
 
    return 0;
}
