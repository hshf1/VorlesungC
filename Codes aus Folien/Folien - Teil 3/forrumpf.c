// Folie 3 - forrumpf.c
 
#include <stdio.h>
 
int main(void)
{
    int iCount;
 
    for (iCount = 20;  iCount > 0; ) {
        printf("Ergebnis %d\n", iCount);
        iCount = iCount - 2;
  }
}
