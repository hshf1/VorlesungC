// Folie 4 – zkettevergleich.c
#include <stdio.h>
#include <string.h>

int main(void) {
    char cS1 [] = "xxAxx";
    char cS2 [] = "xxBxx";
    printf("%d\n", strcmp(cS1,cS2));
    printf("%d\n", strcmp(cS2,cS1));
}
