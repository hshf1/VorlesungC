// Folie 4 – zkettelaenge.c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(void) {
    char Text[101];
    size_t Laenge = 0;
    puts("Geben Sie max 100 Zeichen ein\n");
    fgets(Text,101,stdin);

    Laenge = strlen(Text);
    puts("\n\nSie haben folgendes eingegeben:\n");
    puts(Text);
    printf("Es wurden %d Zeichen eingegeben\n\n", Laenge);

    system("Pause");
    return 0;
}
