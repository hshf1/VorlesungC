#include <stdio.h>

int main(void)
{
	int *zeigerInt;    //Zeiger auf Integervariable
	    int *zeigerInt2;   //Zeiger auf Integervariable
	    short iSumme = 2;
	    zeigerInt = &iSumme;
	    zeigerInt2 = zeigerInt; 
	    (*zeigerInt2)+=2; 
	    (*zeigerInt)--;
	    printf("iSumme: %d\n", iSumme);

}
