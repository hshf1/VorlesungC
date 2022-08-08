// Folie 4 – strukturdefinition.c

int main(void) {
    struct Artikel {
        int artikelnummer;
        char artikelBezeichnung[20];
        double preis;
        float istBestand;
        float minBestand;
    } art;
    art.artikelnummer = 1;
    
    return 0;
}
