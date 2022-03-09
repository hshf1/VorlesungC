#include <stdio.h>

int main(void)
{
	int *pointer;
	int *zeiger;
	int wert;

	pointer = &wert;
	zeiger = pointer;
	*zeiger = 5;
	*pointer = *zeiger * 2;
	return 0;
}
