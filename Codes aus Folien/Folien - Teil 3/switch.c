// Folie 3 - switch.c

#include <stdio.h>

int main (void)
{
    int iNote;

    scanf("%d", &iNote);

    switch (iNote)
    {
        case 1: printf("sehr gut");     break;
        case 2: printf("gut");          break;
        case 3: printf("befriedigend"); break;
        case 4: printf("ausreichend");  break;
        case 5: printf("mangelhaft");   break;
        case 6: printf("ungenügend");   break;
        default:
        printf("Noten 1 - 6 bitte!");
    }
}
