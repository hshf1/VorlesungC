// Folie 4 – bspmalloc.c
#include <stdlib.h>

int main (void) 
{
    int *ptr;
    ptr = (int *) malloc ( 4*sizeof( int ) );
    if (ptr != NULL) 
    {
        *ptr = 99;
    }
	
    return 0;
}
