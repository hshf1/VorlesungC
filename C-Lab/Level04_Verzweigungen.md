# Verzweigungen

Bei Verzweigungen handelt es sich um eine Form von Kontrollstrukturen in Programmiersprachen. Verzweigungen werden genutzt um den Programmablauf so zu steuern, dass er, je
nach Input, ein anderes Verhalten hat. Eines der gängigsten Fälle sind User-Eingaben. So gut wie jedes Programm und jede App sind so aufgebaut, dass sie dem User die
Möglichkeit bieten zu entscheiden, welchen Output er von der jeweiligen Anwendung haben möchte.

Es gibt zwei Arten von Verzweigungen. Zum einen gibt es die if-else-Verzweigung und zum Anderen die switch-case-Verzweigung.

## Die if-else-Verzweigung

Die if-else-Verzweigung ist wohl die Bekanntere von den Beiden. Diese Verzweigungsart besteht aus drei Komponenten, nämlich dem if-Block, einem oder mehreren
else if-Blöcken und einem else-Block. Je nach dem was für eine Verzweigung man aufbaut, kann man die Blöcke unterschiedlich variieren. Allerdings gelten zwei Grundregeln:

1. In einer Verzweigung, dieser Art, muss der if-Block einmal vorkommen und ganz oben stehen. Der if-Block leitet also die if-else-Verzweigung ein.

2. else if-Blöcke und der else-Block können, müssen jedoch nicht benutzt werden. Ihre Anwendung in der Anwendung ist also optional. Man darf beliebig viele else if-Blöcke verwenden, wie man möchte. Sie müssen nur alle unter der dem if-Block stehen. Der else-Block darf, wenn er benutzt wird, nur einmal vorkommen. Er muss unter dem if-Block bzw. nach dem letzten else if-Block stehen.

### Aufbau der einzelnen Blöcke

Aufbau des if-Blocks:

Der if-Block besteht aus drei Komponenten: dem Schlüsselwort if, einem runden Klammernpaar für, eine oder mehrere, Bedingungen und einem Anweisungsblock.
<details>
  
```c
if (Bedingungen)
{
  Anweisungen
}
```

</details>

Aufbau des else if-Blocks:

Der einzige Unterschied, zwischen dem if-Block und dem else if-Block, ist das Schlüsselwort vor den runden Klammern für die Bedingungen. Ansonsten ist ihr Aufbau
identisch.
<details>
  
```c
else if (Bedingungen)
{
  Anweisungen  
}
```  

</details>

Aufbau des else-Block:

Der else-Block besteht nur aus dem Schlüsselwort und dem Anweisungsblock. Der else-Block steht immer ganz am Ende und deckt alle Fälle ab, die keine konkrete
Bedingungen haben müssen.
<details>

```c
else
{
  Anweisungen
}
```

</details>

### Beispiel einer einfachen if-else-Struktur

<details>
<summary>Programmcode</summary>
  
```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int Antwort = 0;

    printf("Was ist 1 + 1?\n");
    printf("Antwort: ");
    scanf("%d", &Antwort);

    if (Antwort == 2)
    {
        printf("Die eingegebene Antwort ist richtig!");
    }
    else
    {
        printf("Die eingegebene Antwort ist falsch.");
    }

    return 0;
}
```

</details>

<details>
<summary>Beschreibung</summary>

An diesem einfachen Beispiel sieht man den grundlegenden Ablauf einer if-else-Verzweigung. Im Beispiel wird vom User erfragt, was die Antwort auf die Rechenaufgabe
1 + 1 ist. Gibt der User die richtige Antwort (in diesem Fall eine 2) ein, so erhält er die vom Programm die Bestätigung, dass seine Antwort richtig ist. Bei einer falschen Antwort, wird man darauf hingewiesen, das die Eingabe falsch war.

Das Beispiel macht auch deutlich, dass solche Strukturen einer binären Logik folgen. Lässt man den else-Block nämlich weg, wird das Programm zwar auch korrekt ausgeführt. Allerdings bekommt der User nur eine Rückmeldung, wenn er die richtige Antwort eingegeben hat. Bei einer Eingabe die falsch ist, erhält er keine Auskunft darüber, ob seine Antwort stimmt oder nicht.

Deswegen gilt:
Will man bei einem bestimmten Ereignis, eine entsprechende Reaktion des Programms darauf haben, muss diese vorher im Quellcode definiert sein.

</details>

### 1. Beispiel einer if-else if-else-Struktur

<details>
<summary>Programmcode</summary>
  
```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int Wert1 = 36;
    int Wert2 = 25;
    int Wert3 = 22;

    if ((Wert1 > Wert2) && (Wert1 > Wert3))
    {
        printf("Wert1 betraegt %d und ist der Groesste!\n", Wert1);
    }
    else if ((Wert2 > Wert1) && (Wert2 > Wert3))
    {
        printf("Wert2 betraegt %d und ist der Groesste!\n", Wert2);
    }
    else if ((Wert3 > Wert1) && (Wert3 > Wert2))
    {
        printf("Wert3 betraegt %d und ist der Groesste!\n", Wert3);
    }

    return 0;
}
```

</details>

<details>
<summary>Beschreibung</summary>

Wie man in diesem Beispiel sieht, eignen sich if-else if-else-Verzweigungen gut, um Werte miteinander zu vergleichen.

In diesem Beispiel wurden, in jedem Block, mehrere Bedingungen gestellt. Im Fall des if-Blocks lauten diese, dass der Wert1 größer als Wert2 und Wert3 sein muss, damit dieser ausgeführt wird.

Verknüpft man mehrer Teilbedingungen miteinander, zu einer Gesamtbedingung, so ist es ratsam diese in Klammern zu setzen. Das macht den Code, zum Einen, leserlicher und, zum Anderen, für andere Programmierer verständlicher.

Bei der Ausführung gilt, wurden die Bedingungen eines Blocks erfüllt, werden die Anweisungen darin ausgeführt. Wenn die Bedingungen eines Blocks als erfüllt gewertet sind, werden die anderen Blöcke nicht mehr berückrichtsichtigt. Ihre Bedingungen werden nicht mehr überprüft. Konkret auf das Beispiel bezogen heißt das, wurden beispielsweise die Bedingungen des if-Blocks als erfüllt gewertet, werden die beiden darauf folgenden else-if-Blöcke nicht mehr berücksichtigt.

</details>

### 2. Beispiel einer if-else if-else-Struktur

<details>
<summary>Programmcode</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char Antwort;

    printf("Welche Programmiersprache wird in diesem Kurs behandelt?\n");
    printf("Antwort A: C\t\t");
    printf("Antwort B: Java\n");
    printf("Antwort C: Python\t");
    printf("Antwort D: Swift\n");

    printf("\n");
    printf("Geben Sie A, B, C oder D ein.\n");
    printf("Ihre Antwort: ");
    scanf("%c", &Antwort);

    if ((Antwort == 'a') || (Antwort == 'A'))
    {
        printf("Ihre Antwort ist richtig!\n");
    }
    else if ((Antwort == 'b') || (Antwort == 'B'))
    {
        printf("Ihre Antwort ist falsch!\n");
    }
    else if ((Antwort == 'c') || (Antwort == 'C'))
    {
        printf("Ihre Antwort ist falsch!\n");
    }
    else if ((Antwort == 'd') || (Antwort == 'D'))
    {
        printf("Ihre Antwort ist falsch!\n");
    }
    else
    {
        printf("Ihre Eingabe ist ungueltig.");

        return 1;
    }

    return 0;
}
```

</details>

<details>
<summary>Beschreibung</summary>

Mit solchen Verzweigungen lassen sich auch Umfragen/ Quizspiele (kurz: jegliche Form von Fallunterscheidungen) realisieren. Genau wie beim 1. Beispiel handelt es sich hier um eine Verzweigung mit einem if- und else-Block, sowie mehreren else if-Blöcken. Häufen sich mehrere else if-Blöcke hintereinander, kann der Code unleserlich werden. In Fällen, wie im gezeigten Beispiel, ist es daher besser statt einer if-else if-else-Verzweigung eine switch-case-Verzweigung zu nutzen.

</details>

## Die switch-case-Verzweigung

Will man Fallunterscheidungen durchführen sind switch-case-Anweisungen die geeignetere Wahl, als die if-else-Verzweigungen. Eine switch-case-Verzweigung besteht
aus drei Komponenten. Den Rahmen einer solchen Verzweigung bildet der switch-Block. In ihm erhalten sind zum einen case-Blöcke sowie max. ein default-Block.

Die case-Blöcke sind die if-, else-if-Blöcke der switch-case-Verzweigung. Der default-Block ist das Pedant zum else-Block und genau wie dieser darf er nur einmal
in der Verzeigung vorkommen und muss zwingend nach dem letzten case-Block stehen.

<details>
<summary>Hinweis</summary>
  
  Für Fallunterscheidungen sollte man die switch-case-Verzweigung vorziehen. Will man Werte miteinander vergleichen ist die if-else-Verzweigung die geeignetere Wahl.
</details>

### Aufbau der einzelnen Blöcke

Aufbau des switch-Blocks:

Der Aufbau des switch-Blocks ähnelt sehr dem eines if-Blocks. Er besteht aus einem Schlüsselwort, einem runden Klammernpaar dahinter und einem Anweisungsblock.
Das Schlüsselwort, dass die Verzweigung einleitet, lautet switch. In dem runden Klammernpaar stehen hier nicht Bedingungen, sondern ein Ausdruck der mit den
verschiedenen Fällen verglichen wird. Der Anweisungsblock enthält keine Anweisungen die ausgeführt werden sollen, sondern die case-Blöcke und den default-Block.
<details>
  
```c
switch (Ausdruck)
{
 
 case 1
  
   .
  
   .
  
   .
  
 case n
  
 default
  
}
```

</details>

Aufbau des case-Blocks:

Der case-Block wird mit dem Schlüsselwort case eingeleitet. Auf das Schlüsselwort folgt ein Wert, der mit dem Ausdruck in Klammern des switch-Blocks, verglichen wird.
Die Syntax gibt vor, das hinter dem Wert ein Doppelpunkt ( : ) stehen muss. Auf diesen Dopplepunkt folgt der Anweisungsblock. Hier stehen die Anweisungen, die beim
eintreffen des Falles, ausgeführt werden sollen.

<details>
  
  ```c
  case Konst. : {Anweisungen}
  ```
  
</details>

Im Anweisungsblock jedes case-Blocks muss nach der letzten Anweisung der Befehl break stehen. Dieser Befehl sorgt dafür, dass die Verzweigung, ab diesem Punkt,
verlassen wird. lässt man einen Befehl weg, wird die Verzweigung solange weiter ausgeführt, bis das Programm wieder auf einen break-Befehl innerhalb der Verzweigung
trifft. Lässt man sämtliche break-Befehle weg, so wird ab dem Moment, wo der Ausdruck des switch-Blocks mit einem Fall übereinstimmt, alle Anweisungen innerhalb
der Verzweigung ausgeführt.

<details>
<summary>Hinweis</summary>
Sowohl der Ausdruck im switch-Block, als auch der Wert des case-Blocks, müssen konstante Ganzzahlen sein.
</details>

Aufbau des default-Blocks:
Der default-Block wird mit dem Schlüsselwort eingeleitet. Wie auch der else-Block keine Bedingungen hat, hat auch der default-Block keinen Wert, der mit dem Ausdruck
aus dem switch-Block verglichen werden kann. Auf das Schlüsselwort folgt der Doppelpunkt. Dahinter kommt der Anweisungsblock.

<details>
  
  ```c
  default: {Anweisungen}
  ```
  
</details>

### Beispiel einer switch-case-Verzweigung

<details>
<summary>Programmcode</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char Antwort;

    printf("Welche Programmiersprache wird in diesem Kurs behandelt?\n");
    printf("Antwort A: C\t\t");
    printf("Antwort B: Java\n");
    printf("Antwort C: Python\t");
    printf("Antwort D: Swift\n");

    printf("\n");
    printf("Geben Sie A, B, C oder D ein.\n");
    printf("Ihre Antwort: ");
    scanf("%c", &Antwort);

    switch (Antwort)
    {
    case 'a':
    case 'A':
    {
        printf("Ihre Antwort ist richtig!\n");
        break;
    }
    case 'b':
    case 'B':
    {
        printf("Ihre Antwort ist falsch!\n");
        break;
    }
    case 'c':
    case 'C':
    {
        printf("Ihre Antwort ist falsch!\n");
        break;
    }
    case 'd':
    case 'D':
    {
        printf("Ihre Antwort ist falsch!\n");
        break;
    }
    default:
    {
        printf("Ihre Eingabe ist ungueltig.");

        return 1;
    }
    }

    return 0;
}
```

</details>

<details>
<summary>Beschreibung</summary>

In diesem Beispiel wurde nochmal die Quizfrage aufgegriffen. Nur wurde dieses Mal eine switch-case-Verzweigung verwendet. Das Programm verhält sich identisch zu dem, wo die if-else if-else-Verzweigung verwendet wurde. Auch sieht man an dem Beispiel gut, dass man das bewusste Weglassen des break-Befehls zum Vorteil nutzen kann.

In den Fällen, wo ein kleiner Buchstabe eingegeben wird, wurden keine Anweisungen hinterlegt. Deshalb werden bei der Eingabe von kleinen Buchstaben die drauffolgenden Blöcke ausgeführt, wo die break-Befehle hinterlegt sind.

</details>
