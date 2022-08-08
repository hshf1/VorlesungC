// Folie 4 – zeigerstruktur.c

int main(void) {
    struct wert {
        float *Betrag;
        float *Rate;
    } Firstwert;

    float Kosten;
    float Zinsen;

    Firstwert.Betrag = &Kosten;
    Firstwert.Rate = &Zinsen;
    *Firstwert.Betrag = 100.99;
    
    return 0;
}
