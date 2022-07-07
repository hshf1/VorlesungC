// Folie 4 – dateibearbeitung2.c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int i;
    FILE *filePointer;
  
    //öffnen zum Lesezugriff
    filePointer = fopen("test000.txt", "r");
    char *fileInput[3]={NULL}; 
    char *res;
	
    for (i = 0; i < 3; i++) {
        fileInput[i]= (char *) malloc(51);
        res=fgets(fileInput[i], 51, filePointer );
        if (res == NULL) break;
            puts(fileInput[i]);
    }
  
    // Speicher freigeben
    for (i = 0; i < 3; i++) {
        if (fileInput[i] != NULL) free(fileInput[i]);
        fileInput[i]=NULL;
    }
  
    fclose(filePointer);
    filePointer = NULL;
}
