<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/12"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 7

## Teil 1

<details>
<summary>Aufgabenstellung zu Teil 1</summary>

Schreiben Sie ein Programm, was die Widerstände der E12-Reihe bis 10000 Ohm berechnet und sie auf der Konsole ausgibt. Nutzen Sie dafür eine while- oder do-while-Schleife.

Die Ausgabe auf der Konsole soll wie folgt aussehen:

Widerstand 1 hat einen Wert von 1.00 Ohm.
</br>
Widerstand 2 hat einen Wert von 1.21 Ohm.
</br>
Widerstand 3 hat einen Wert von 1.47 Ohm.
</br>
...
</br>

<details>
<summary>Hinweis: Berechnung von E12-Widerständen</summary>

Die E12-Reihe ist eine spezielle Gruppe von Widerstandswerten, die in der Elektronik verwendet wird. Die Reihe enthält insgesamt 12 Widerstandswerte pro Zehnerpotenz (Dekade). Das bedeutet, dass die Werte von 1 Ohm bis 10 Ohm in der ersten Zehnerpotenz liegen, von 10 Ohm bis 100 Ohm in der zweiten Zehnerpotenz und so weiter.

Was besonders praktisch ist: Die Widerstandswerte in der E12-Reihe unterscheiden sich immer nur um den Faktor 10. Dadurch ist es einfach, die Widerstände zu berechnen. Eine Formel im Wikipedia-Link kann verwendet werden, um alle Widerstandswerte in der richtigen Reihenfolge bis zu 10000 Ohm zu ermitteln. Sie müssen sich jedoch nicht mit dem Konzept der Zehnerpotenzen (Dekaden) auseinandersetzen, sondern können direkt die Formel nutzen, um die Werte zu erhalten.

 Wikipedia: https://de.wikipedia.org/wiki/E-Reihe

 In C können Sie die E12-Reihe mit der pow()-Funktion aus math.h berechnen.

<details>
<summary>Beispiel zur Anwendung der pow-Funktion</summary>

```c

#include <stdio.h>
#include <math.h>

int main()
{
    // Potenzieren von 2 hoch 3
    double result = pow(2.0, 3.0);

    printf("2 hoch 3 ist gleich %.2f\n", result);

    // Potenzieren von 5 hoch 2.5
    double result2 = pow(5.0, 2.5);

    printf("5 hoch 2.5 ist gleich %.2f\n", result2);

    return 0;
}


```

</details>

</deteils>

</details>

</details>

## Teil 2

<details>
<summary>Aufgabenstellung zu Teil 2</summary>

Schreiben Sie das vorherige Programm um, indem Sie es in zwei Unterprogramme (Funktionen) aufteilen.

Erstellen Sie die Funktion "calculateE12Resistor", die einen Rückgabewert vom Typ float hat. Diese Funktion soll ein Argument vom Typ int akzeptieren, das die Nummer des Widerstands in der E12-Reihe darstellt (auch bekannt als Exponent). Die Funktion berechnet den Widerstandswert für den übergebenen Widerstandsexponenten und gibt ihn als Gleitkommazahl zurück.

Erstellen Sie die Funktion "printE12SeriesOnConsole", die einen Rückgabewert vom Typ void hat und keine Argumente akzeptiert. Wenn diese Funktion aufgerufen wird, soll sie im Hintergrund die Widerstandswerte bis 10000 Ohm berechnen und sie entsprechend des Formats aus der vorherigen Aufgabe auf der Konsole ausgeben. Diese Funktion ruft intern die Funktion "calculateE12Resistor" für jeden Widerstandsexponenten in der E12-Reihe auf. Da Sie aber nun die Anzahl der Widerstände kennen, nutzen Sie für die Umsetzung eine for-Schleife.

In der main-Funktion soll nur die Funktion "printE12SeriesOnConsole" aufgerufen werden. Diese Funktion kümmert sich um die Berechnung und Ausgabe der E12-Reihe auf der Konsole, indem sie die Funktion "calculateE12Resistor" für jeden Widerstandsexponenten aufruft. Die Widerstandswerte werden dann auf der Konsole entsprechend formatiert ausgegeben.

</details>

## Teil 3

<details>
<summary>Aufgabenstellung zu Teil 3</summary>

Erweitern Sie das vorherige Programm, um den Benutzer dazu aufzufordern, einen Wunschwert für einen Widerstand einzugeben. Dieser eingegebene Widerstandswert soll dann mit den Widerständen aus der E12-Reihe verglichen werden.

Die Abfrage des Wunschwertes soll nicht in der main-Funktion, sondern mittels einer Funktion namens getResistorFromUser realisiert werden. Diese Funktion hat den Rückgabetyp float.

Ebenso soll die Suche des besten Einzelwiderstandes aus der E12-Reihe nicht in der main-Funktion stattfinden, sondern in einer Funktion namens findBestSingleResistor. Diese Funktion hat den Parameter resistor_from_user vom Typ float, der den vom Benutzer eingegebenen Wunschwert darstellt. Die Funktion soll den besten E12-Widerstand ermitteln, der dem Wunschwert des Benutzers am nächsten kommt, und die Ergebnisse auf der Konsole ausgeben. Die Differenz zum Wunschwert soll dabei prozentual angegeben werden.

Zur Berechnung des besten Einzelwiderstandes sollen Sie eine for-Schleife verwenden und die Funktion calculateE12Resistor aufrufen.

</details>

## Teil 4

<details>
<summary>Aufgabenstellung zu Teil 4</summary>

Eweitern Sie nun Ihr Programm um zwei weitere Funktionen. Die eine Funktion soll die
Parallelschaltung aus zwei Widerständen berechnen und zurückgeben. Die Andere soll den, vom User eingebenen, Wert mit berechneten Parallelwiderständen vergleichen und auf der Konsole das Ergebnis ausgeben.

Zur Berechnung der Parallelschaltung erstellen Sie die Funktion "calculateTwoResistorsInParallel"
vom Typ float. An die Funktion sollen die Werte von zwei Widerständen des Typs float übergeben
werden können.

Die andere Funktion soll vom Typ void sein und den Namen "findBestTwoResistorsInParallel"
haben. Die Umsetzung ist analog zur Funktion "findBestSingleResistor". Statt einer einfachen
for-Schleife müssen Sie zwei verschachtelte for-Schleifen verwenden. Auch hier soll das
beste Ergebnis auf der Konsole ausgegeben werden.

<details>
<summary>Beispiel von verschachtelten for-Schleifen</summary>
Zur Veranschauung, wie verschachtelte for-Schleifen aussehen,
finden sie ein Bespiel.

```c
    for (int i = 0; i < 8; i++) // Äußere for-Schleife
    {
        for (int j = 0; j < 8; j++) // Innere for-Schleife
        {
            if ((i % 2 == 0) && (j % 2 == 0))
            {
                printf("[O][X]");
            }
            else if ((i % 2 != 0) && (j % 2 == 0))
            {
                printf("[X][O]");
            }

            if (j == 7)
            {
                printf("\n");
            }
        }
    }
```
</details>

</details>

## Teil 5

<details>
<summary>Aufgabenstellung zu Teil 5</summary>

Ändern Sie nun die beiden Funktionen "findBestSingleResistor" und "findBestTwoResistorsInParallel"
vom Typ void in float um. Die Funktionen sollen, zusätzlich zu ihrer bisherigen Aufgabe,
bei Aufruf den Wert der besten Differenz (Differenz zwischen Wunschwiderstand und gefundenen Widerstand) zurückgeben.

In der main sollen dafür zwei Variablen des Typs float erstellt werden an die die Werte, der beiden
Funktionen, zurückgeben werden können.

Erstellen Sie nun eine Funktion des Typ void mit dem Namen "checkBestOption" an die zwei
Argumente des Typ float übergeben werden können. An sie sollen die Werte der beiden Differenzen
übergeben werden können, damit Diese eine Empfehlung ausgeben kann, ob der Einzelwiderstand oder
die Parallelschaltung die bessere Wahl ist. Nutzen Sie für die für die Umsetzung
(innerhalb der Funktion) eine if-else-Verzweigung.

</details>
