// Folie 4 – dateibearbeitung4.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE* fp = fopen("meine_binaerdatei.dat", "wb");
  
    if(fp == NULL) {
        printf("Fehler: Datei konnte nicht geoeffnet werden.\n");
        exit(-1);
    }

    int messwerte[4] = {1, 2, 3, 4};
    fwrite(messwerte, sizeof(int), 4, fp);

    fclose(fp);
    
    return 0;
}
