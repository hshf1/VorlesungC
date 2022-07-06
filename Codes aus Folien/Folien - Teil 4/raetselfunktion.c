// Folie 4 – raetselfunktion.c
#include <stdio.h>

int Quadrat(int Wert1) {   
	return Wert1 * Wert1; 
}	

//Berechne (Wert1+Wert2)^2
int SummeZumQuadrat(int Wert1, int Wert2) {
	int Res = Quadrat(Wert1 + Wert2);
	return Wert2; 
}

int main() {
	int Zahl1 = 1; //lokale Variable
	int Zahl2 = 2; 

	printf("Zahl: %d",SummeZumQuadrat(Zahl1, Zahl2)); 
}
