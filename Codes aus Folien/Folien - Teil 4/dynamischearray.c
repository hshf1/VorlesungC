// Folie 4 – dynamischearray.c
#include <stdlib.h>

int main (void) {
    int *value;
    int size = 100;
    int count = 0;
    value = (int *) malloc (size * sizeof( int ) );
    if (NULL != value) {
        while(count < size) {
            *(value + count) = count;
            count++;
        }
    }
    free(value);
    value = NULL;
}
