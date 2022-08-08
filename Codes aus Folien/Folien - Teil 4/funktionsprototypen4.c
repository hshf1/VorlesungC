// Folie 4 – funktionsprototypen4.c
double CalcProduct (int Wert1, float Wert2)
{
    double Ergebnis;
    Ergebnis = Wert1 * Wert2;
    return Ergebnis;
}

int main(void)
{
    const int Zahl1= 3;
    const float Zahl2= 4.5;
    double Uebergabe;
    Uebergabe = CalcProduct(Zahl1, Zahl2);
    
    return 0;
}
