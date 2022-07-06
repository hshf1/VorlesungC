// Folie 4 – zkettecopy.c
#include <string.h>
#include <stdio.h>

int main(void) {
    char cString1[80+1];
    char cString2[80+1]="Der String ist leer";
    puts("Geben Sie max 80 Zeichen ein");
    fgets(cString1,81,stdin);

    puts(cString1);
    puts(cString2);

    strcpy(cString2, cString1);

    puts (cString1);
    puts (cString2);
}
