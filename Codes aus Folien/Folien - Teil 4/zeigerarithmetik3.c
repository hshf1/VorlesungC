// Folie 4 – zeigerarithmetik3.c

int main(void) {
    int *pointer;
    int *zeiger;
    int wert;

    pointer = &wert;
    zeiger = pointer;
    *zeiger = 5;
    *pointer = *zeiger * 2;
}
