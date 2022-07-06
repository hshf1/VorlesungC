// Folie 4 – raetselfunktion.c
#include <stdio.h>

int Quadrat(int iWert) {   
	return iWert * iWert; 
}	

//Berechne (iWert1+iWert2)^2
int SummeZumQuadrat(int iWert1, int iWert2) {
	int iRes = Quadrat(iWert1 + iWert2);
	return iWert2; 
}

int main() {
	int iZahl1 = 1; //lokale Variable
	int iZahl2 = 2; 

	printf("Zahl: %d",SummeZumQuadrat(iZahl1, iZahl2)); 
}
