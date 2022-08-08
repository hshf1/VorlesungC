// Folie 3 - bsptypkonv.c

#include <stdio.h>

int main(void)
{
    int    Zahl   = 2;
    double Result = 0;

    Result = 1 / 2 * Zahl;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 0.0 */

    Result = 1.0 / 2 * Zahl;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 1.0 */

    Result = 1 / 2.0 * Zahl;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 1.0 */

    Result = (double) 1 / 2 * Zahl;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 1.0 */

    Result = 1 /(double)2 * Zahl;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 1.0 */

    Result = (double) ( 1/ 2 * Zahl);
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 0.0 */

    Result = Zahl * 1/2;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 1.0 */

    Result = (double) 5 + 1/2;
    printf("Ergebnis: %.1f\n", Result); /* Ergebnis: 5.0 */
    
    return 0;
}

