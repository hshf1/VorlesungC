// Folie 4 – codeanalyse.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr = NULL;
    ptr = (int *) malloc( 10*sizeof( int ) );
    if (ptr == NULL) {
        printf("Speicher voll!"); 
    } else {
        int i;
        for (i=0;i<10;i++) {
            ptr[i]=i*2; 
        }
        printf("%d",*ptr+1);
        free(ptr);
    }
}
