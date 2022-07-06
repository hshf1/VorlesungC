// Folie 4 – funktionsprototypen3.c
double CalcProduct(int, float);

int main(void)
{
    const int Zahl1= 3;
    const float Zahl2= 4.5;
    double Uebergabe;
    Uebergabe = CalcProduct(Zahl1, Zahl2);
}

double CalcProduct (int Wert1, float Wert2)
{
    double Ergebnis;
    Ergebnis = Wert1 * Wert2;
    return Ergebnis;
}
