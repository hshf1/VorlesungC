// Folie 4 – zkettecopy.c
#include <string.h>
#include <stdio.h>

int main(void) {
    char String1[80+1];
    char String2[80+1]="Der String ist leer";
    puts("Geben Sie max 80 Zeichen ein");
    fgets(String1,81,stdin);

    puts(String1);
    puts(String2);

    strcpy(String2, String1);

    puts (String1);
    puts (String2);
    
    return 0;
}
