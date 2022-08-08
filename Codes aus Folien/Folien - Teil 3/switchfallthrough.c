// Folie 3 - switchfallthrough.c

#include <stdio.h>

int main (void)
{
    int Note;

    scanf("%d", &Note);

    switch (Note)
    {
        case 1: printf("sehr gut");                         break;
        case 2: printf("gut");                              break;
        case 3:
        case 4: printf("befriedigend oder ausreichend");    break;
        case 5:
        case 6: printf("mangelhaft oder ungenügend");       break;
        default:
        printf("Noten 1 - 6 bitte!");
    }
    
    return 0;
}
