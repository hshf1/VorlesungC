// Folie 3 – bitweiseop.c

int main(void) {
    char Zahl  = 0b10100010; // Binäre Eingabe der Zahl 0xA2
    char Maske = 0b00001111; // Binäre Eingabe der Zahl 0xF

    char Result;    // Ergebnisvariable
    char Schiebung; // Ergebnis nach Shift

    Result = Zahl & Maske;
    Schiebung = Result <<1;
}
