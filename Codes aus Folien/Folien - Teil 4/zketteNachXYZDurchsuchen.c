#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int istXYZ(char *testZeichenkette)
{
    int zaehler = 0;
    char xyz[] = "xXyXzZ";

    while (*testZeichenkette != '\0')
    {
        if (strchr(xyz, *testZeichenkette) != NULL)
        {
            zaehler++;
        }
        testZeichenkette++;
    }

    return zaehler;
}

int main()
{
    char testZeichenkette[] = "Hallo Welt";

    int anzahl_von_xyz = istXYZ(testZeichenkette);
    printf("Die zu prüfende Zeichenkette lautet: %s\n", testZeichenkette);
    printf("Die Anzahl der Buchstaben X, Y und Z betraegt: %d\n", anzahl_von_xyz);
    return 0;
}