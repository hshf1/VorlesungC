// Folie 3 - Sonder_Steuerzeichen.c

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
   printf("Ueberlaenge mit Umlauten: \232berl\204nge\n\n");
   printf("Andere Moeglichkeit:   %cberl%cnge\n\n",0x9A,0x84);
   system("Pause"); //Windows
}
