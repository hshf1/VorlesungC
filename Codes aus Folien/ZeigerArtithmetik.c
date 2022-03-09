#include <stdio.h>

int main(void)
{
	int iFeld[] = {1,2,3};
	int *pointer = iFeld;

	printf("%d\n", *pointer);
	printf("%d\n", *(pointer + 1));
	printf("%d\n", *(pointer++));
	printf("%d\n", *(++pointer));
	printf("%d\n", *(pointer - 1));


	return 0;
}
