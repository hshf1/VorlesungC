// Folie 3 - forrumpf.c
 
#include <stdio.h>
 
int main(void)
{
    int Count;
 
    for (Count = 20;  Count > 0; ) {
        printf("Ergebnis %d\n", Count);
        Count = Count - 2;
  }
}
