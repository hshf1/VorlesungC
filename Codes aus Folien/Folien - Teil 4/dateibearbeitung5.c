// Folie 4 – dateibearbeitung5.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE* fp = fopen("meine_binaerdatei.dat", "rb");
  
    if(fp == NULL) {
        printf("Fehler: Datei konnte nicht geoeffnet werden.\n");
        exit(-1);
    }

    int messwerte[4] = {0};
    fread(messwerte, sizeof(int), 4, fp); 

    fclose(fp);
}
