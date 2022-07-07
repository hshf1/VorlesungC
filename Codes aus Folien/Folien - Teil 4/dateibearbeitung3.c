// Folie 4 – dateibearbeitung3.c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int i=0,y=0;
    char *res=0;
    FILE *filePointer;
    char *fileInput[200]={0}; 
	
    filePointer = fopen("test000.txt", "r"); //Öffnen zum Lesezugriff
  
    if (filePointer !=NULL) {
        do{
            fileInput[i]= (char *) malloc(51);
            res=fgets(fileInput[i], 50, filePointer );
            puts(fileInput[i]);
            i++;
        } while (res!=NULL && i < 200);
        for (y = 0; y < i; y++) {
            free(fileInput[y]);
            fileInput[y]=NULL;
        }

        fclose(filePointer);
        filePointer = NULL;
	}
}
