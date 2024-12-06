#include <stdio.h>
#include <string.h>

int main ()
{
    char* string1[3]     = {"Haus", "Auto", "Hund"};
    char  string2[3] [6] = {"Haus", "Auto", "Hund"};
    int i;

    for (i=0;i<3;i++) printf("%s\n", string1[i]);
    for (i=0;i<3;i++) printf("%s\n", string2[i]);

    printf("%c, ", string1[1][2]);
    printf("%c\n", string2[1][2]);
    printf("%c, ", *(string1[0]+1) );
    printf("%c\n", *(string2[0]+1) );


    //string1[2][1]='a';  // Fehler!!
    string2[2][1]='a';
    string1[2]= "test1";
    strcpy(string2[2],"test2");
    printf("%s\n", string1[2]);
    printf("%s\n", string2[2]);
}
