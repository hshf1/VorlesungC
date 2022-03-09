#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int main(void)
{
	int *pZeiger = NULL;
	if (!pZeiger) {
	   printf("Keine gueltige Adresse\n");
	}
	else {
	  *pZeiger = 3;
	}
	system("Pause");
	return 0;
}
