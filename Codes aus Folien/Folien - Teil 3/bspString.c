// Folie 3 - bspString.c
 
#include <stdio.h>
 
int main(void)
{
    printf("Teststring 10.15s   :#%10.15s#\n",
           "Dies ist ein Test, um die Genauigkeit "
           "zu erklaeren.");
    printf("Teststring 10.15s   :#%10.15s#\n","Dies");
    return  0;
}
