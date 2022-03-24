int main(void)
{
	// definieren
	int *zeigerInt;
	int iSumme;

	// initialisieren
	 iSumme = 12345;
	zeigerInt = &iSumme;
	printf("Adresse, die der Zeiger enthält: %p\n", zeigerInt);

	// Dereferenzieren
	printf("Wert der Variablen, auf die gezeigt wird: %d\n", *zeigerInt);
}
