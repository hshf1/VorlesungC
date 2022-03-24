#include <stdio.h>

int eingabe(void);
void ausgabe(int);

int main(void) {
    int iZahl;
    printf("Gebe eine Zahl ein: ");
    iZahl = eingabe();
    ausgabe(iZahl);
    return 0;
}
int eingabe (void) {
    int iZahl;
    scanf("%d",&iZahl);
    return iZahl;
}
void ausgabe (int iWert) {
    printf("%d",iWert);
}
