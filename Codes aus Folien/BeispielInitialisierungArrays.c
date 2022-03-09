#include <stdio.h>
#define WOCHEN 4
#define TAGE 7
float fSonnenaufgang [WOCHEN] [TAGE] = {
	{6.01f, 5.57f,  5.56f,  5.54f,  5.55f,  5.51f,  5.36f},
	{5.47f, 5.46f,  5.44f,  5.43f,  5.41f,  5.40f,  5.39f},
	{5.37f, 5.36f,  5.34f,  5.33f,  5.32f,  5.31f,  5.30f},
	{5.28f, 5.27f,  5.26f,  5.25f,  5.24f,  5.23f,  5.23f}
};

int main(void)
{
	int iZeile, iSpalte;
	printf("Tag    Mo   Di   Mi   Do   Fr   Sa   So");
	for (iZeile = 0; iZeile < WOCHEN; iZeile++) {
	  printf("\nWoche%d", iZeile);
	  for (iSpalte=0; iSpalte < TAGE;  iSpalte++) {
		printf(" %.2f", fSonnenaufgang[iZeile] [iSpalte]);
	  }
	}
   	return 0;
}
