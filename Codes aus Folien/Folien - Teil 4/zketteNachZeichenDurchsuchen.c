#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    char zeichenkette[] = "Hello World";
    char *ges_zeichen = strchr(zeichenkette, 'l');

    printf("Die Zeichenkette lautet: \"%s\"\n", zeichenkette);

    for (int i = 0; zeichenkette[i] != '\0'; i++)
    {
        int index = i;
        if (zeichenkette[i] == *ges_zeichen)
        {
            printf("Das erste \"%c\" hat den Index %d in der Zeichenkette.\n", *ges_zeichen, index);
            break;
        }
    }
}