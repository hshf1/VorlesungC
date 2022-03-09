#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int *pZeiger = NULL;
	if (pZeiger == NULL) {
     printf("Keine gueltige Adresse\n");
	}
	else {
	  *pZeiger = 3;
	}
	system("Pause");
	return 0;
}
