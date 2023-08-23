#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char istZeichenABC(char Zeichen)
{
  char ABC[] = "aAbBcC";    
  if (strchr(ABC, Zeichen)!= NULL) return 1; 
        else return 0;
}

int main()
{
    char Zeichenkette[] = "Hallo Welt";
    int i, Anz=0;
    for (i=0; i<strlen(Zeichenkette); i++){
        if (istZeichenABC(Zeichenkette[i])==1) Anz++;
    }
    printf("Die zu prüfende Zeichenkette lautet: %s\n", Zeichenkette);
    printf("Die Anzahl der Buchstaben a, b oder c betraegt: %d\n", Anz);
}
