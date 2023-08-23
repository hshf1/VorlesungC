#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    char zeichenkette[] = "Hello World";
    char *ges_zeichen = strchr(zeichenkette, 'W');
    printf("Die Zeichenkette lautet: \"%s\"\n", zeichenkette);
    printf("Adresse des gefundenen Zeichens: %p\n",ges_zeichen );
    printf("Adresse des ersten Satzzeichens: %p\n",&zeichenkette[0] );
    printf("Index des Zeichens: %d\n", (int) (ges_zeichen - &zeichenkette[0]) );

}
