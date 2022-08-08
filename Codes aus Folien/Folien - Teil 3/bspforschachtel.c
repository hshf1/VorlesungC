// Folie 3 - bspforschachtel.c
 
#include <stdio.h>
 
int main (void)
{
    int Count;
    int Mal;
 
    // Das kleine ein-mal-eins
 
    for (Count = 1; Count <= 10; Count++){
        for (Mal = 1; Mal <= 10; Mal++){
            printf("%d * %d = %d\n", Count, Mal, Count*Mal);
        }
    }
    
    return 0;
}
