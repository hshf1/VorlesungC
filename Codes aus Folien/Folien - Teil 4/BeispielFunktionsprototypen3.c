#include <stdio.h>

double CalcProduct(int, float);

int main(void)
{
	const int iZahl= 3;
	const float fZahl= 4.5;
	double dUebergabe;
	dUebergabe = CalcProduct(iZahl, fZahl);
	return 0;
}

double CalcProduct (int iWert, float fWert)
{
	double dErgebnis;
	dErgebnis = iWert * fWert;
	return dErgebnis;
}
