// Folie 3 - forkopf4.c
 
#include <stdio.h>
 
int main(void)
{
    int iCount;
    int merkCount;
 
    for (iCount = 1, merkCount = 2; iCount <= 10; iCount++)
    {
        printf("%d * %d = %d\n", iCount, merkCount, iCount * merkCount);
    }
}
