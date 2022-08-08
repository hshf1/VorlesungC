// Folie 3 - ausgabeshortlong.c
 
#include <stdio.h>
 
int main(void)  
{
    printf("Long Integer-Zahl: %ld\n", 100000);
    /* Zu großer Wert für short */
    printf("Short Integer-Zahl: %hd\n", 100000);
    printf("Long Double Float-Zahl: %Lf\n",100.45);
    
    return 0;
}
