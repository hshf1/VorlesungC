#include <stdio.h>

int berechne(int); 

int main(void) { 
    int iErg;
    iErg=berechne(3);
    iErg=berechne(4);
    return 0;
}

int berechne(int iWert) {
  int iErgebnis;
  int iZahl = 0;
  iErgebnis = iWert * 3;
  iZahl++;
  printf("Aufr.Nr.:%d\n",iZahl);
  return iErgebnis;
}
