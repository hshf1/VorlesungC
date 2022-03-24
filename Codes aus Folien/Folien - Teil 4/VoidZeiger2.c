#include <stdio.h>
int main(void)
{
	void *pZeiger;
	int  iWert;

	iWert = 10;
	pZeiger= &iWert;
	printf("pointer: Adr. %p, Wert %d", pZeiger, *(int *)pZeiger);
	return 0;
}
