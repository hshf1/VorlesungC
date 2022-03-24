#include <stdio.h>

int main() {
	int aiFeld[5] = {3,2,1}; //Array mit 5 Werten

	int i;
	for (i=0; i<5;i++) {
		aiFeld[i]=aiFeld[i+1];
		printf("%d ", aiFeld[i]);
	}
}
