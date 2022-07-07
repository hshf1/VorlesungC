// Folie 4 – zkettevergleich.c
#include <stdio.h>
#include <string.h>

int main(void) {
    char S1 [] = "xxAxx";
    char S2 [] = "xxBxx";
    printf("%d\n", strcmp(S1,S2));
    printf("%d\n", strcmp(S2,S1));
}
