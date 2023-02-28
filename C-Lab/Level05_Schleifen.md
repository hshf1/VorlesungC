# Schleifen

Will man eine Reihe von Anweisungen in einem Programm mehrmals hintereinander verwenden, so verwendet man Schleifen um dies zu realisieren. Schleifen sind die zweite Form der Kontrollstrukturen.

In C gibt es drei verschiedene Schleifen: die for-Schleife, die while-Schleife und die do-while-Schleife.

Was alle drei Schleifen-Typen gemeinsam haben ist, dass sie eine Durchlauf-Bedingung besitzen. Eine Durchlauf-Bedingung ist eine Bedingung, die vor jedem neuen Schleifendurchlauf geprüft wird. Solange die Bedingung erfüllt ist, wird die Schleife wiederholt. Ist sie nicht bzw. nicht mehr erfüllt, wird die Schleife verlassen oder, unter entsprechenden Umständen, gar nicht erst ausgeführt.

## Kopfgesteuerte und fußgesteurte Schleifen

Man unterscheidet zwischen zwei Arten von Schleifen, nämlich kopfgesteuerten und fußgesteuerten Schleifen. Der Unterschied zwischen den zwei Arten ist einfach erklärt.

Bei den kopfgesteuerten Schleifen wird die Durchlauf-Bedingung immer vor einem Durchlauf geprüft. Sie steht über dem Anweisungsblock, also am Kopf der Schleife. Die for-Schleife und die while-Schleife sind beides kopfgesteuerte Schleifen.

Bei fußgesteuerten Schleifen wird die Durchlauf-Bedingung ganz zum Schluss geprüft (nach dem Durchlauf). Sie steht unter dem Anweisungsblock, als am Fuß der Schleife. Die do-while-Schleife ist eine fußgesteuerte Schleife.

Der Hauptunterschied zwischen den beiden Arten liegt darin, das eine fußgesteuerte Schleife IMMER einmal ausgeführt wird, bevor ihre Durchlauf-Bedingung geprüft wird. Bei einer kopfgesteuerten Schleife wird vor der Ausführung die Durchlauf-Bedingung geprüft. Es kann vorkommen, dass die Durchlauf-Bedingung bereits vor der ersten Ausführung nicht mehr erfüllt ist. In diesem Fall wird eine kopfgesteuerte Schleife garnicht erst ausgeführt.

## Die for-Schleife

Die for-Schleife ist die Schleife mit der man, in der Praxis, häufiger in Berührung kommt. Wenn die Anzahl der Iterationen (wie häufig die Schleife wiederholt werden soll) bekannt ist oder sie sogar fix sein muss, ist es gängige Praxis die for-Schleife zu nutzen. Sie ist wie folgt aufgebaut:

```c
for (Bereich 1; Bereich 2; Bereich 3){
	Anweisungen
}
```

Die Schleife wird mit dem Schlüsselwort for eingeleitet. Dahinter ist ein rundes Klammernpaar, was verschiedene Bedingungen enthält. Der Inhalt des rundes Klammernpaares ist in drei Bereiche aufgeteilt:

<details>
<summary>Bereich 1: Start-Bedingung (Initialisierung)</summary>

Die Start-Bedingung (Bereich 1) wird nur ganz am Anfang, vor dem ersten Schleifendurchlauf, geprüft. Ist sie erfüllt, wird die Schleife ausgeführt. Anderenfalls wird sie komplett übersprungen. Für die Start-Bedingung wird üblicherweise eine Zählvariable gewählt.
</details>

<details>
<summary>Bereich 2: Durchlauf-Bedingung</summary>

Die Durchlauf-Bedingung (Bereich 2) wird vor jedem Schleifendurchlauf geprüft. Die Schleife wird beendet, wenn sie nicht mehr erfüllt ist.
</details>

<details>
<summary>Bereich 3: Operation (Reinitialsierung)</summary>

Die Operation (Bereich 3) dient dazu, die Zählvariable der Start-Bedingung zu erhöhen / verringern. Meistens wird eine Inkrementierung um den Wert 1 gewählt. Die Operation wird immer am Ende eines Schleifendurchlaufs ausgeführt.
</details>

Die einzelnen Bereiche sind jeweils durch ein Semikolon voneinander getrennt. Auf das runde Klammernpaar folgt der Anweisungsblock.

<details>
<summary>Beispiel</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int cycle = 0;

    for (int i = 0; i < 5; i++)
    {
        cycle = i + 1;
        printf("%d. Durchlauf\n", cycle);
    }

    return 0;
}
```

Das Beispiel zeigt eine for-Schleife die fünf Durchläufe ausführt und ihren aktuellen Schleifendurchlauf, mittels printf-Anweisung, auf der Konsole ausgibt.

Die Hilfsvariable cycle dient dazu die Nummer des jeweiligen Schleifendurchlaufs abzuspeichern. Sie wird außerhalb der for-Schleife mit dem Wert 0 initialisiert. Innerhalb der for-Schleife wird ihr der Wert der Variable i + 1 zugewiesen. Hätte man cycle innerhalb der for-Schleife mit dem Wert 0 initialisiert, würde bei jedem neuen Schleifendurchlauf die Initialisierung von neuem stattfinden.

Der Wert der Variable i (Variable der Start-Bedingung der for-Schleife) konnte nicht als Nummer des jeweiligen Schleifendurchlaufs verwendet werden, da sie mit dem Wert 0 initialisiert wurde. In der Informatik ist es nämlich üblich, dass man bei 0 anfängt zu zählen.
Aus diesem Grund lautet die Durchlaufbedingung auch i < 5 für fünf Schleifendurchläufe. Würde man die Durchlauf-Bedingung i <= 5 stellen, würde die Schleife insgesamt sechs Durchläufe ausführen.

<details>
<summary>Anmerkung</summary>

Im Kapitel über Arrays wird deutlich, warum es Sinn macht dass for-Schleifen von 0 aus operieren.
</details>

</details>

## Die while-Schleife

Ist die Anzahl der Iterationenen nicht bekannt, ist es gängige Praxis die while-Schleife zu verwenden. Die Schleife ist wie folgt aufgebaut:

```c
while(Ausdruck){
    Anweisungen
}
```

Die Schleife wird mit dem Schlüsselwort while eingeleitet. In dem runden Klammernpaar dahinter steht der Ausdruck. Solange dieser wahr ist, wird die Schleife ausgeführt. Der Ausdruck ist jedoch nicht gleich die Startbedingung der while-Schleife. Je nach dem was als Ausdruck hinterlegt ist, kann es vorkommen, dass eine Schleife gar nicht erst augeführt wird. Außerdem muss man sich bei der while-Schleife eine Abbruch-Bedingung selbst zusammenbasteln. Bei der for-Schleife ist die Abbruch-Bedingung durch das Zusammenspiel der Durchlauf-Bedingung und der Operation (Reintialisierung) gegeben.
Hinter dem runden Klammernpaar steht, auch hier, der Anweisungsblock.

<details>
<summary>Beispiel</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int cycle = 0;
    int i = 0;

    while (i < 5)
    {
        cycle = i + 1;
        printf("%d. Durchlauf\n", cycle);
        i++;
    }

    return 0;
}
```

In dem Beispiel sieht man eine while-Schleife die fünf Durchläuf ausführt und ihren aktuellen Schleifendurchlauf, mittels printf-Anweisung, auf der Konsole ausgibt.

Die Hilfvariablen cycle und i stehen außerhalb der Schleife. Würde man sie innerhalb der Schleife initialisieren, würden beide Variablen bei jedem Schleifendurchlauf auf 0 gesetzt werden. Zufolge hätte das, dass auf der Konsole permanent "1. Durchlauf" ausgegeben wird, da es zu keiner Abbruch-Bedingung kommt. Die Variable cycle speichert, auch hier, die Nummer des aktuellen Schleifendurchlaufs.

Die Variable i dient als Zählvariable für die Abbruch-Bedingung. Sie ist eine Komponente Dieser. Der andere Teil der Abbruch-Bedingung ist der Ausdruck im runden Klammernpaar der while-Schleife. Innerhalb der Schleife wird i mit jedem Durchlauf inkrementiert. Beträgt der Wert von i 5, ist der Ausdruck nicht mehr erfüllt und die Schleife wird verlassen.

Das Beispiel zeigt nur eine Möglichkeit einer Abbruch-Bedingung bei einer while-Schleife. Je nach Anwendungsfall kann (muss) man die Abbruch-Bedingung auch anders realisieren.

</details>

## Die do-while-Schleife

Wie schon zu Beginn erwähnt, handelt es sich bei der do-while-Schleife, im Gegensatz zu den anderen Beiden, um eine fußgesteurte Schleife. Während bei einer while-Schleife die Möglichkeit besteht, dass sie unter Umständen gar nicht ausgeführt wird, wird eine do-while-Schleife immer mindestens einmal ausgführt. Die do-while-Schleife ist wie folgt aufgebaut:

```c
do{
    Anweisungen
}while(Ausdruck);
```

Eingeleitet wird die Schleife mit dem Schlüsselwort do. Auf das Schlüsselwort folgt der Anweisungsblock. Hinter der schließenden Klammer des Anweisungsblock steht das Schlüsselwort while mit dem runden Klammernpaar, wo drin der Ausdruck enthalten ist (so wie man es auch von der while-Schleife gewohnt ist). Eine Besonderheit der do-while-Schleife (und  gleichzeitig auch eine der häufigsten Fehlerquellen, wenn man sie benutzt) ist das Semikolon, hinter dem runden Klammernpaar des Ausdrucks. Eine do-while-Schleife muss mit einem Semikolon abgeschlossen werden. Dies gibt die Syntax vor!

<details>
<summary>Beispiel</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int cycle = 0;
    int i = 0;

    do
    {
        cycle = i + 1;
        printf("%d. Durchlauf\n", cycle);
        i++;
    }while(i < 5);

    return 0;
}
```

Zu sehen ist im Beispiel eine do-while-Schleife, die fünf Durchläufe ausführt und ihren aktuellen Schleifendurchlauf, mittels printf-Anweisung, auf der Konsole ausgibt.

Bis auf die Tatsache, dass sie definitiv mindestens einmal ausgeführt wird, ist die Logik der do-while-Schleife identisch mit der, der while-Schleife.

</details>

## Umwandlug von Schleifen

Wie man erkennen konnte, haben die Programme der drei vorangegangenen Beispiele alle zur identisch gleichen Ausgabe geführt, obwohl drei unterschiedliche Arten von Schleifen genutzt wurden. Das liegt daran, dass man jede Schleife in eine Andere umwandeln kann.

Gängige Praxis ist es aber, aber dass man bei einer bekannten und/oder fest vorgeschriebenen Anzahl an Iterationenen die for-Schleife verwendet und bei einer unbekannten bzw. variablen Anzahl an Iterationen die while-Schleife nutzt. Ist die Anwendung einer while-Schleife nötig, man jedoch sicher stellen möchte das sie mindestens einmal ausgeführt wird, benutzt man die do-while-Schleife.

## Endlosschleifen

Eine Nutzungsmöglichkeit von Schleifen, bei deren Nutzung man bedacht vorgehen sollte, sind Endlosschleifen. Aus Versehen kann man Endlosschleifen schneller programmieren, als man denkt. Der häufigste Fehler ist, dass man eine Abbruch-Bedingung definiert, die nicht erfüllt wird. Im schlimmsten Fall kann dann das Programm die Hardware zum Abstürzen bringen.

Endlosschleifen werden jedoch auch ganz bewusst angewendet z.B. Serveranwendungen.
Möchte man eine Endlosschleife programmieren, so sollte man sie wohlbedacht konstruieren. Außerdem sollte man eine Abbruch-Bedingumng definieren, die bei Fehlverhalten der Schleife ausgelöst wird!

In den folgenden drei Beispielen sind die einfachsten Versionen von Endlosschleifen zu sehen. Die Ausführung dieser Schleifen, auf der eigenen Hardware, unterliegt eigener Gefahr!

<details>
<summary>Beispiel einer Endlos-for-Schleife</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    for (;;)
    {
        printf("Endlosschleife!\n");
    }

    return 0;
}
```

</details>

<details>
<summary>Beispiel einer Endlos-while-Schleife</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    while (1)
    {
        printf("Endlosschleife!\n");
    }

    return 0;
}
```

</details>

<details>
<summary>Beispiel einer Endlos-do-while-Schleife</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    do
    {
        printf("Endlosschleife!\n");
    } while (1);

    return 0;
}
```

</details>
