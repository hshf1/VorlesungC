# Datentypen

Datentypen sind für das Erstellen von Variablen und Funktionen von nöten. Bei Variablen geben sie die Speichergröße vor und wie das Bitmuster, das in der Variable gespeichert ist, zu interpretieren ist. Bei Funktionen gibt der Datentyp vor, wie der return-Wert der Funktion, zu interpretieren ist.

Es gibt zwei Arten von Datentypen, nämlich vordefinierte und abgeleitete Datentypen. Bei den vordefinierten Datentypen handelt es sich um die elementaren Typen, sowie den Typ void. Abgeleitete Datentypen sind z.B. Pointer und Strukturen.

Auf den Typ void, sowie die abgeleiteten Datentypen, wird zu späteren Zeitpunkten konkreter drauf eingegangen. Folgend werden die elementaren Datentypen genauer erklärt.

## Elementare Datentypen

Elementare Datentypen sind nichts anderes als die ganzzahligen Typen und Gleitkommatypen.

### Ganzzahlige Typen

Bei den ganzzahligen Typen (Integer Types) handelt es sich um die Typen char, short, int und long. Die einzelnen Typen unterscheiden sich in ihrer Speichergröße und somit dem Wertebereich, den sie abspeichern können.

Besonderes gilt beim Typ char. Dieser kann genutzt werden, um Zahlen in Variablen zu speichern. Allerdings ist char der einzige Datentyp, der in der Lage ist, Zeichen abzuspeichern. char steht für "character".

Der gängiste Typ, um Ganzzahlen abzuspeichern, ist int. int steht für Integer. Man findet diesen Typ in so gut wie jeder Programmiersprache wieder.

### unsigned Typen

Bei den ganzahligen Typen gibt es die "Besonderheit", dass man sie auch unsigned (nicht vorzeichenbehaftet) nutzen kann. In unsigned Typen lassen sich immer nur positive Zahlen abspeichern. unsigned verschiebt den Wertebereich eines Typs ins Positive.

### Gleitkommatypen

Bei den Gleitkomma- oder auch Gleitpunkttypen (Floating Types) handelt es sich um die Typen float und double. Auch hier unterscheiden sich die Typen nur in der Speichergröße und den Wertebereichen, die sie abbilden können. Der Typ double ist doppelt so groß, wie ein float.

Beim Schreiben eines Codes muss man darauf achten, das man Kommazahlen mit einem Punkt, statt mit einem Komma, schreibt. Das liegt einfach daran, dass die Programmiersprachen aus dem englischsprachigen Raum stammen und man dort Kommazahlen mit einem Punkt schreibt. Deswegen spricht man auch von "floating point numbers".

<details>
<summary>Hinweis</summary>

Die Speichergröße der Typen ist in C, im Vergleich zu anderen Programmiersprachen, nicht festgelegt. Sie unterscheidet je nach genutzem Compiler und der verwendeten Hardware.

</details>

### Überblick der Datentypen

Die Daten aus den folgenden Tabellen gelten für ein 32-Bit-Sytem!

Überblick ganzzahlige Typen:

| Typ | Größe | Wertebereich | Anwendungsfall |
|-----|-------|--------------|----------------|
| char | 8 Bit / 1 Byte | -128 bis 127 | Zeichen (character) und ganze Zahlen |
| short | 16 Bit / 2 Byte | -32768 bis 32767 | ganze Zahlen |
| int | 32 Bit / 4 Byte | -2147483648 bis 2147483647 | ganze Zahlen |
| long | 32 Bit / 4 Byte | -2147483648 bis 2147483647 | ganze Zahlen |

Überblick unsigned Typen:

| Typ | Größe | Wertebereich | Anwendungsfall |
|-----|-------|--------------|----------------|
| unsigned char | 8 Bit / 1 Byte | 0 bis 255 | Zeichen (character) und ganze Zahlen |
| unsigned short | 16 Bit / 2 Byte | 0 bis 65535 | ganze Zahlen |
| unsigned int | 32 Bit / 4 Byte | 0 bis 4294967295 | ganze Zahlen |
| unsigned long | 32 Bit / 4 Byte | 0 bis 4294967295 | ganze Zahlen |

Überblick Gleitkommatypen:

| Typ | Größe | Wertebereich | Genauigkeit |
|-----|-------|--------------|-------------|
| float | 32 Bit / 4 Byte | 1,2 * 10<sup>-38</sup> bis 3,4 * 10<sup>38</sup> | 6 Nachkommastellen |
| double | 64 Bit / 8 Byte | 2,3 * 10<sup>-308</sup> bis 1,7 * 10<sup>308</sup> | 15 Nachkommastellen |

# Variablen

Variablen sind, einfach ausgedrückt, eigens gewählte Namen für die Speicheradressen (im Arbeitsspeicher) mit denen ein Computer arbeitet. Speicheradressen sind mit hexadezimalen Zahlen codiert. Um einen Quellcode leserlicher zu gestalten (und wir Menschen mit hexadezimalen Zahlen wenig anfangen können) benutzt man Variablen. Variablen besitzen vier Eigenschaften:

<details>
<summary>Name</summary>

Eigens gewählter Name für die Speicheradresse

</details>

<details>
<summary>Wert</summary>

Zahl bzw. Zeichen, die/das in der Adresse gespeichert ist

</details>

<details>
<summary>Datentyp</summary>

Gibt das Format vor, wie der Wert gespeichert werden soll

</details>

<details>
<summary>Adresse</summary>

Hexadezimale Zahl, mit dem der Speicherort codiert ist

</details>

Der Inhalt von Variablen ist im Laufe des Programms veränderbar. Bildlich kann man sich den Zusammenhang zwischen Speicheradressen und Variablen in Form von Boxen gut vorstellen. Der Speicherplatz, auf den die Speicheradresse verweist, ist die Box. Der Variablenname, den man wählt, ist die eigensgewählte Bezeichnung, um diese Box einfacher wiederzufinden.

## Konstanten

Konstanten sind Variablen mit festem Wert. Im Gegensatz zu Variablen können die Werte einer Konstanten im Laufe des Programms nicht verändert werden. Schreibt man vor dem Datentyp das Schlüsselwort const, so wird diese Variable als Konstante deklariert.

### Kurzfassung

Variablen: Werte können im Laufe des Programms verändert werden.

Konstanten: Werte sind fest zugewiesen und können im Nachhinein nicht mehr verändert werden.

<details>
<summary>Hinweis</summary>

Variablennamen dürfen frei gewählt werden, allerdings dürfen sie nicht Schlüsselwörter sein!
Schlüsselwörter sind Bezeichner die von C reserviert sind.

</details>

### Schlüsselwörter von C (nach C11-Standard)

| Schlüsselwörter |
|-----------------|
| _Alignas |
| _Alignof |
| _Atomic |
| _Bool |
| _Complex |
| _Generic |
| _Imaginary |
| _Noreturn |
| _Static_assert |
| _Thread_local |
| auto |
| break |
| case |
| char |
| const |
| continue |
| default |
| do |
| double |
| else |
| enum |
| extern |
| float |
| for |
| goto |
| if |
| inline |
| int |
| long |
| register |
| restrict |
| return |
| short |
| signed |
| sizeof |
| static |
| struct |
| switch |
| typedef |
| union |
| unsigned |
| void |
| volatile |
| while |

## Namenskonvention - Benennung von Variablen

Programmier haben Vorschriften bzw. Empfehlungen zur Benennung von Variablen, Funktionen etc. entwickelt. Diese dienen dazu um Programmtexte verständlicher zu gestalten und somit die Möglichkeit der Wartung (Änderbarkeit) der Software zu verbessern. Programmierer sind somit in der Lage Quellcodes anderer Programmier besser nachzuvollziehen. Beim Benennen von Variablen wird die Pascal-Notation angewendet. Das bedeutet, dass der erste Buchstabe des Variablennamens groß geschrieben wird und die folgenden Buchstaben klein.

Beispiel:

```c
char Zeichen;
int Zahl;
```

Besteht ein Variablenname aus mehreren Wörtern, so wird der erste Buchstabe jedes Wortes groß geschrieben.

Beispiel:

```c
float GleitkommaZahl;
long LangeZahl;
```

Beim Benennen von Funktionen gilt, das die Bezeichnung ein aussagekräftiges Tätigkeitswort sein muss und es klein geschrieben wird.

Beispiel:

```c
void ausgeben();
int addieren();
```

Besteht die Bezeichnung aus einem Tätigkeitswort und einem Hauptwort, so wird das Tätigkeitswort klein und der erste Buchstabe des Hauptworts groß geschrieben.

Beispiel:

```c
void ausgebenString();
int addiereZahlen();
```

<details>
<summary>Hinweis</summary>

Beim Benennen von Variablen und Funktionen gilt, dass aussagkräftige Namen gewählt werden müssen!

Außerdem dürfen gewählte Namen nicht mit einer Zahl beginnen, sondern müssen mit einem Buchstaben anfangen. Desweiteren dürfen in den gewählten Namen auch keine Leerzeichen, sowie Umlaute (ä, Ä, ö, Ö, ü, Ü) enthalten sein.

</details>

## Deklaration - Definition - Initialisierung

### Deklaration

Unter deklarieren versteht man, dem Compiler den Namen einer Variable bekanntzumachen und diesen mit einem Datentyp zu verknüpfen. Da jeder Variablenname individuell sein muss, ist der Compiler in der Lage Fehler abzufangen, wenn man versucht zwei Variablen dem selben Namen zu deklarieren.

### Definition

Von einer Definition spricht man, wenn einer Variablen Speicherplatz zugewiesen wird. Jeder Speicherplatz hat eine eindeutige Adresse. Mit dem Variablennamen wird die damit verknüpfte Speicheradresse angesprochen.

<details>
<summary>Anmerkung</summary>

(Zum jetzigen Wissenstand) ist jede Deklaration auch gleichzeitig eine Definition. Auf Deklarationen ohne Definition wird später eingegangen.

</details>

### Initialisierung

Wurde eine Variable deklartiert und definiert, so ist der Inhalt der Variable der Wert, der sich im zugewiesenen Speicherplatz bereits befand. Man erhält also einen Zufallswert, wenn man mit dieser Variablen arbeitet. Möchte man einer Variablen selber einen bestimmten Wert zuweisen, so bezeichnet man diesen Vorgang als Initialisierung. Die Zuweisung kann mittels Zuweisungsoperator (=) oder der Funktion scanf erfolgen.
(Beides wird später konkreter erläutert.)

Beispiel:

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int Zahl1;  // Variable vom Typ int wird deklariert und definiert
    Zahl1 = 42; // Variable Zahl1 wird mit dem Wert 42 initialisiert

    /*
    Variable vom Typ float deklarieren, definieren
    und mit dem Wert 2,5 initialisieren
    */
    float Zahl2 = 2.5;

    printf("Wert von Int-Variable: %d\n", Zahl1);
    printf("Wert von Float-Variable: %f\n", Zahl2);

    return 0;
}
```

## Ausgabe mittels printf-Funktion (Teil 2)

Wie schon am Anfang erwähnt, lassen sich mittels der printf-Anweisung, neben Klarschrift und Steuerzeichen, auch Formatzeichen ausgeben. Im vorangegangenen Beispiel wurden solche Formatzeichen für die Ausgabe verwendet. Die Formatzeichen dienen dazu die Werte, welche in den Variablen Zahl1 und Zahl2 sind, über printf ausgegeben.

Die printf-Funktion in ihrer vollständigen Form sieht wie folgt aus:

```c
printf("Wert von Int-Variable: %d\n", Zahl1);
```

Über eine Formatanweisung lassen sich die Werte/Variablen in der Variablenliste auswerten. Wichtig ist, dass das Ende des Formatstring und die erste Variable, in der Variablenliste, durch ein Komma getrennt sind. Will man mehrere Variablen über eine printf-Anweisung ausgeben, müssen diese auch mit einem Komma dazwischen getrennt werden und sie müssen in der Reihenfolge stehen, wie sie verarbeitet werden sollen!
