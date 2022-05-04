// Folie 3 - forcharinit.c
 
#include <stdio.h>
 
int main (void)
{
    char cZeichenGross;
 
    for (cZeichenGross = 'A'; cZeichenGross < 'C'; cZeichenGross++){
        printf("Schleifendurchlauf: %c\n", cZeichenGross);
    }
}
