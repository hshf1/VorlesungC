// Folie 3 - bsptypkonv.c

#include <stdio.h>

int main(void)
{
    int    iZahl   = 2;
    double dResult = 0;

    dResult = 1 / 2 * iZahl;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 0.0 */

    dResult = 1.0 / 2 * iZahl;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 1.0 */

    dResult = 1 / 2.0 * iZahl;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 1.0 */

    dResult = (double) 1 / 2 * iZahl;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 1.0 */

    dResult = 1 /(double)2 * iZahl;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 1.0 */

    dResult = (double) ( 1/ 2 * iZahl);
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 0.0 */

    dResult = iZahl * 1/2;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 1.0 */

    dResult = (double) 5 + 1/2;
    printf("Ergebnis: %.1f\n", dResult); /* Ergebnis: 5.0 */
}

