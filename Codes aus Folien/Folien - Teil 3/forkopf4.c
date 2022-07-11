// Folie 3 - forkopf4.c
 
#include <stdio.h>
 
int main(void)
{
    int Count;
    int merkCount;
 
    for (Count = 1, merkCount = 2; Count <= 10; Count++)
    {
        printf("%d * %d = %d\n", Count, merkCount, Count * merkCount);
    }
}
