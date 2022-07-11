// Folie 3 - forcharinit.c
 
#include <stdio.h>
 
int main (void)
{
    char ZeichenGross;
 
    for (ZeichenGross = 'A'; ZeichenGross < 'C'; ZeichenGross++){
        printf("Schleifendurchlauf: %c\n", ZeichenGross);
    }
}
