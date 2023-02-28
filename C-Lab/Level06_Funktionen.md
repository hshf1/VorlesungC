# Funktionen

Möchte man bestimmte Handlungsabfolgen (Algorithmen) mehrmals, an verschiedenen Stellen des Codes, nutzen, so bietet es sich an aus ihnen Funktionen zu erstellen.
Funktionen sind Zusammenfassungen bestimmter Handlungsabfolgen.
Die Funktion, ohne die kein C-Programm auskommt, ist die main-Funktion! Sie wird vom Betriebssystem als erstes aufgerufen und die in ihr enthaltene Handlungsabfolge, also das eigentliche Programm welches vom Programmierer geschrieben wurde, wird ausgeführt. Innerhalb der main-Funktion sind also alle Funktionen hinterlegt, die ausgeführt werden sollen.

In der Praxis kommt es, so gut wie, nie vor, dass man eine Problemstellung nur in der main-Funktion löst. Tatsächlich bricht man eine Problemstellung in viele kleine Teil-Probleme herunter und löst diese in Form von Funktionen.

Die Nutzung von Funktionen macht den Code ordentlicher und verbessert die Wartbarkeit. Im Falle eines Fehlers, einer bestimmten Handlungsabfolge, muss man den Coder nur an einer Stelle korrigieren. Hätte man die Handlungsabfolge mehrmals in der main-Funktion genutzt, statt sie in eine Funktion auszulagern, so müsste man einen Fehler, in der Handlungsabfolge, an jeder einzelnen Stelle korrigieren, wo diese genutzt wurde.

Es gibt zwei verschiedene Arten von Funktionen, nämlich welche von den bisher bekannten Datentypen und welche vom Typ void. Der Unterschied liegt in ihren Rückgaben. Im Gegensatz zu Funktionen von einem Datentyp, geben void-Funktionen nichts zurück.

## Der Datentyp void

Bei void (englisch für "Leere") handelt es sich nicht um einen echten Datentypen. Er wird anstelle eines Datentypen (char, short, int, long, float, double) verwendet um anzugeben, dass kein Wert benötigt wird oder vorhanden ist. Laut der Syntax von C ist void als Datentyp zu behandeln, jedoch darf er nur in ganz bestimmten Stellen verwendet werden, nämlich wenn man Funktionen erstellt oder mit Zeigern (Pointer) arbeitet.

Bei Funktionen wird void verwendet, um Funktionen zu erstellen die keine Werte zurückgeben oder eine Funktion keine Parameter hat.

Auf die Verwendung von void bei Zeigern wird später eingegangen.

## Der Grundaufbau einer Funktion

Eine Funktion besteht aus zwei grundlegenden Teilen, nämlich dem Funktionskopf und dem Funktionskörper. Beim Funktionskörper handelt es sich einfach nur um einen Anweisungsblock. der Funktionskopf ist etwas komplexer aufgebaut und besteht aus mehreren Teilkomponenten. Eine Funktion wird durch den Funktionskopf deklariert.

Syntax einer Funktion:

```c
<Datentyp><Funktionsname>([Parameter])
{
	Anweisungen
}
```

Der Funktionskopf besteht aus vier wesentlichen Bestandteilen nämlich aus einem Datentypen, einem Funktionsnamen, einem runden Klammernpaar und, einem oder mehreren, Parametern innerhalb des runden Klammernpaares. Auf die geschlossene Klammer folgt der Funktionskörper.

## Rückgabe einer Funktion

Wie schon zu Beginn erwähnt gibt es zwei Arten von Funktionen. Sie unterscheiden sich in ihrem Rückgabewert. Der Datentyp einer Funktion gibt vor von welchem Datentyp die Rückgabe der Funktion ist oder kürzer: **Datentyp Funktion = Datentyp Rückgabewert**

Soll eine Funktion keinen Rückgabewert haben, nutzt man den Datentyp void.

## Parameter

Parameter sind Werte, die an die Funktion übergeben werden. Parameter sind optional, das runde Klammernpaar in dem sie stehen jedoch nicht! Bei einer Funktion, wo Parameter nicht erforderlich sind, lässt man das Klammernpaar leer oder schreibt (übergibt man der Funktion) ein void. Beides ist gleichwertig.

Die Parameter müssen nicht vom gleichen Datentyp sein, wie die Funktion. Wenn man also z.B. eine Funktion vom Typen float erstellt, können die Parameter von ihr auch vom Typen int sein. Der Wert, der von dieser Funktion zurückgeben wird, ist jedoch vom Datentyp float.

## Die main-Funktion (Teil 2)

Gehen wir nun ganz an den Anfang zurück. Das Allererste was vorgestellt wurde, war die main-Funktion:

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    return 0;
}
```

Wie vorhin erwähnt, muss jede Funktion einen Datentypen besitzen. Die main-Funktion bildet da keine Ausnahme! Die main-Funktion, wie wir sie genutzt haben, ist vom Typ int. Dem Entsprechend ist die, mittels return-Anweisung, zurückgegebene 0 auch vom Typ int.

Die korrekte Form der main-Funktion, nach C99-Standard, sieht wie folgt aus:

```c
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    return 0; // muss nicht verwendet werden
}
```

Bei dieser Form der main-Funktion kann man sich das return 0 auch sparen, da man den Parameter void übergeben hat. Am Ende ihrer Ausführung wird also nichts zurückgegeben.

Eine alternative Form der main-Funktion, mit der man häufiger in Berührung kommt, ist die void-main-Funktion. Statt die main-Funktion vom Datentyp int zu definieren, wird sie vom Datentyp void definiert:

```c
#include <stdio.h>
#include <stdlib.h>

void main()
{
    
}
```

Im Gegensatz zur int-main-Funktion gibt die void-main-Funktion in keinsterweise was zurück. Die Anweisung return 0; würde zu einem Fehler führen! Man sollte die void-main-Funktion nur benutzen, wenn man Programme schreibt, die komplett ausgeführt (also nicht vor erreichen der letzten Codezeile beendet) werden.

## Beispiel zur Anwendung von Funktion

Im folgenden werden zwei Int-Zahlen miteinander addiert. Die Addition wird in eine Funktion ausgelagert. Dieses einfache Beispiel soll die praktische Anwendung von Funktionen verdeutlichen.

```c
#include <stdio.h>
#include <stdlib.h>

// Deklaration und Definition der Funktion
int addiereIntZahlen(int Zahl1, int Zahl2)
{
    int Ergebnis = Zahl1 + Zahl2;

    return Ergebnis;
}

// main-Funktion
int main()
{
    int Wert1 = 42;
    int Wert2 = 33;

    int Summe = addiereIntZahlen(Wert1, Wert2);

    printf("Die Summe der beiden Int-Zahlen %d und %d ist %d.\n", Wert1, Wert2, Summe);

    return 0;
}
```

Funktionen müssen vor der main-Funktion, mindestens, deklariert worden sein. Das liegt daran, dass der Compiler, beim Übersetzen des Quellcodes in Maschinensprache, sich von oben nach unten durcharbeitet. Außerdem werden Programme von oben nach unten abgearbeitet (ausgeführt). Somit ist für die main-Funktion alles, was nach (unter) ihr deklariert worden ist, irrelevant.
Die Definition einer Funktion kann auch zu einem späteren Zeitpunkt (also nach der main-Funktion) erfolgen. Durch die Deklaration vor der main-Funktion wird dem Programm vermittelt, dass eine Funktion (mit der entsprechenden Bezeichnung) existiert. Man hätte also das vorangegangene Programm auch so schreiben können:

```c
#include <stdio.h>
#include <stdlib.h>

// Deklaration der Funktion
int addiereIntZahlen(int Zahl1, int Zahl2);

// main-Funktion
int main()
{
    int Wert1 = 42;
    int Wert2 = 33;

    int Summe = addiereIntZahlen(Wert1, Wert2);

    printf("Die Summe der beiden Int-Zahlen %d und %d ist %d.\n", Wert1, Wert2, Summe);

    return 0;
}

// Definition der Funktion
int addiereIntZahlen(int Zahl1, int Zahl2)
{
    int Ergebnis = Zahl1 + Zahl2;

    return Ergebnis;
}
```

<details>
<summary>Hinweis</summary>

Die Syntax gibt vor, dass Deklarationen von Funktionen mit einem Semikolon abgeschlossen werden müssen. Wenn man jedoch eine Funktion auch überhalb der main-Funktion definiert, symbolisiert die schließende geschweifte Klammer ( } ) das Ende.

</details>

Über der main-Funktion wird die Funktion addiereIntZahlen deklariert. Die Deklaration einer Funktion besteht nur aus dem Funktionskopf.

Unter der main Funktion wird die Funktion definiert. Die Funktion ist vom Datentyp int und wie schon in der Deklaration "bekanntgemacht", hat sie die Bezeichnung addiereIntZahlen und die an sie übergebenen Parameter sind int Zahl1 und int Zahl2. Mit den beiden Parametern wird innerhalb des Funktionskörpers (Anweisungsblock der Funktion) gearbeitet. Im Funktionskörper ist die Variable int Ergebnis definiert. Die Initialisierung dieser Variable besteht aus der Rechnung Zahl1 + Zahl2. Am Ende der Funktion wird mittels return-Anweisung der Wert von der Variable Ergebnis an die aufrufende Funktion (in diesem Fall die main-Funktion) zurückgeben. Der zurückgegebene Wert ist vom Typ int.

Innerhalb der main-Funktion werden erstmal die beiden Variablen Wert1 und Wert2 erstellt. Wert1 wird mit 42 und Wert2 mit 33 initialisiert. Beide Variablen sind vom Typ Integer. Als nächstes wird die Variable Summe erstellt. Auch sie ist vom Typ Integer. Statt jedoch die Variable mit einem Wert zu initialisieren oder eine Rechnung durchzuführen, wird hinter dem Zuweisungsoperator die Funktion addiereIntZahlen aufgerufen.

Im Funktionsaufruf werden dann Wert1 und Wert2 als Argumente hinterlegt. Die beiden Variablen werden also den Funktionsparametern Zahl1 und Zahl2 zugewiesen, damit die Funktion mit den beiden Werten den, in ihr definierten, Algorithmus abarbeiten kann. Das Ergebnis, was dann mittels der return-Anweisung, zurückgeben wird, wird in der Variable Summe hinterlegt. Die Variable Summe wird also mit dem return-Wert der Funktion addiereIntZahlen initialisiert.

## Unterschied zwischen Parametern und Argumenten bei Funktionen

Parameter und Funktionen sind **nicht** ein und dasselbe. Das wird häufig gerne verwechselt.

Parameter werden beim Erstellen einer Funktion miterstellt. Sie dienen dazu Argumente zu empfangen und sind auch nur innerhalb der Funktion gültig. Beim Aufruf einer Funktion wird ihnen also der Wert des Arguments zugewiesen.

Argumente sind die konkreten Werte, die an die Funktion übergeben werden. Diese Werte werden dann innerhalb der Funktion den Parametern zugewiesen, damit Diese die Werte verarbeiten kann.

Zur Verdeutlichung zwischen Parametern und Argumenten ist hier nochmal ein einfaches Beispiel:

```c
#include <stdio.h>
#include <stdlib.h>

// Deklaration und Definition
void ausgebenErklaerung(int Parameter)
{
    printf("Die Zahl des Arguments, die beim Funktionsaufruf, innerhalb der main-Funktion, hinterlegt wurde lautet %d.\n", Parameter);
    printf("Der Variable Parameter, die innerhalb der Funktion ausgebenErklaerung gueltig ist, wird der Wert des Arguments zugewiesen.\n");
}

// main-Funktion
int main()
{
    int Argument = 21;

    ausgebenErklaerung(Argument);

    return 0;
}
```
