// Folie 4 – dateibearbeitung.c
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int i;
    FILE *filePointer;

    // Öffnen zum Schreibzugriff
    filePointer = fopen("test000.txt", "w");
    if (filePointer == NULL){
        printf("Datei lies sich nicht öffnen\n");
        exit(1);
    }	
    for ( i= 1; i<10; i++) {
        printf("Schreiben in Datei Zeile %i\n",i);
        fprintf(filePointer,"Schreibe in Datei Zeile %i\n",i);
    }
    printf("\n\nSchreibvorgang beendet\n");

    fclose(filePointer);
    filePointer = NULL;
    
    return 0;
}
