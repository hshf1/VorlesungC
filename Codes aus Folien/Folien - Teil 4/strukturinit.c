// Folie 4 – strukturinit.c

typedef struct artikel_s {
    int Artikelnummer;
    char ArtikelBezeichnung[20];
    double Preis;
    float IstBestand;
    double MinBestand;
} artikel_t;

int main(void) {
    artikel_t Art = { 1, "Apfel pro kg", 1.99, 5.0, 3.0};
    
    return 0;
}
