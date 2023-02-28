# Basics

In diesem Kapitel werden ein paar absolute Grundlagen vorgestellt, die man in der Programmiersprache C beherrschen muss! Das Kapitel soll als einfacher Einstieg in C dienen.

## Das Grundgerüst: Die main-Funktion

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    return 0;
}
```

<details>
<summary>stdio.h</summary>

Die Headerdatei stdio.h enthält alle Standardfunktionen für die Standard-Ein- und Ausgabe. Diese Headerdatei muss zwingend erhalten sein!

stdio steht für "Standard Input Output".
</details>

<details>
<summary>stdlib.h</summary>

stdlib steht für "Standard library".

Diese Headerdatei ist eine Sammlung von einer Vielzahl von Funktionen und Makros.
</details>

<details>
<summary>main-Funktion</summary>

Diese Funktion ist das Kerngerüst jedes Programms. Sie darf nur einmal enthalten sein und ohne sie ist kein Programm funktionsfähig.

Auf die Bedeutung vom int wird später eingegangen.
</details>

<details>
<summary>return</summary>

Die return-Anweisung beendet die Funktion. Steht am Ende der main-Funktion "return 0;" so bedeutet das, dass das Programm ohne Fehler beendet wird.
</details>

## Die Bedeutung der geschweiften Klammern

Geschweifte Klammern ( { und } ) bilden einen Anweisungsblock. In einem Anweisungsblock werden mehrere Anweisungen zu einer Einheit zusammengefasst. Die Anweisungen in einem Anweisungsblock werden von oben nach unten abgearbeitet.

Regel Nr.1: Geschweifte Klammern dienen dazu mehrere Anweisungen zu einem Anweisungsblock zusammenzufassen.

## Die Bedeutung des Semikolons

Das Semikolon ( ; ) ist eines der wichtigsten Zeichen, wenn nicht sogar das wichtigste Zeichen, in C. Am Ende jeder Anweisung muss ein Semikolon stehen! Das Semikolon zeigt das Ende einer Anweisung an, genau so wie ein Punkt einen Satz beendet.

Regel Nr. 2: Jede Anweisung muss mit einem Semikolon abgeschlossen werden.

## Ausgabe mittels printf-Funktion

printf steht für "print formatted". Sie ist eine der häufig genutzen Funktionen in C. Sie gibt formatierten Text über die Standardausgabe aus. Der Text, der in die Funktion eingegeben wird, kann aus Klarschrift, Steuerzeichen und Formatzeichen bestehen.

printf ist in der Headerdatei stdio.h deklariert.

<details>
<summary>Wichtige Steuerzeichen</summary>

| Steuerzeichen | Bedeutung |
|---------------|------------------------------|
|		\0		| Null, Endzeichen für Strings |
|		\n		| Line Feed, neue Zeile		   |
|   	\f		| Form Feed, neue Seite		   |
|   	\t		| Horizontal Tab			   |
|   	\v		| Vertical Tab				   |
|   	\a		| Alert, Ton				   |
|   	\b		| Backspace, ein Zeichen zurückgehen |
|   	\\'		| Ausgabe vom Zeichen: '	   |
|   	\\"		| Ausgabe vom Zeichen: "	   |
|   	\\?		| Ausgabe vom Zeichen: ?	   |
|   	\\\		| Ausgabe vom Zeichen: \	   |
|   	\o		| Zeichen für oktalen Code (o = Oktalziffer) |
|   	\xh		| Zeichen für hex-Code (h = Hex-Ziffer) |

</details>

<details>
<summary>Wichtige Formatzeichen</summary>

| Formatzeichen | Bedeutung |
|---------------|------------------------------|
|		%%		| Ausgabe vom Zeichen: %	   |
|		%c		| Zeichen für char			   |
|   	%d		| Zeichen für Ganzzahlen (short, int) |
|   	%ld		| Zeichen für lange Ganzzahlen (long) |
|   	%e		| Gleitkommazahl (float, double) in wiss. Notation |
|   	%E		| Gleitkommazahl (float, double) in wiss. Notation |
|   	%f		| Gleitkommazahl (float) in Dezimal-Schreibweise |
|   	%lf		| Gleitkommazahl (double) in Dezimal-Schreibweise |
|   	%u		| Zeichen für unsigned-Datentypen |
|   	%s		| Zeichen für String	   	   |
|   	%x		| Zeichen für eine Hex-Zahl (short, int) |
|   	%o		| Zeichen für eine Oktalzahl (short, int) |
|   	%p		| Zeichen für eine Zeiger-Adresse (*Pointer) |

</details>

## Aufbau von printf

```c
printf("Hallo Welt\n");
```

printf ist eine Funktion, die aus mehreren Teilen besteht. Im Verlauf der Zusammenfassung wird auf alle Teile eingegangen. Zum jetzigen Zeitpunkt reicht es zu wissen, dass der Text der, über die Standardausgabe, ausgegeben werden soll zwischen zwei Anführungszeichen ( " ) steht.

Die obige Codezeile zeigt eine aufgerufene printf-Anweisung. printf ist der Funktionsaufruf. Das was in den runden Klammern und zwischen den Anführungszeichen steht, ist der Formatstring, der an die Funktion übergeben wird. Auch das Steuerzeichen \n wird an die Funktion übergeben.

<details>
<summary>Beispiel</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("Hallo Welt\n");
    
    return 0;
}
```

</details>

## Kommentare

Kommentare dienen dazu ein Programm, für Programmierer, verständlicher zu schreiben. Sie sind ausschließlich für den Menschen da und werden im Maschinencode nicht eingebunden. Beim Kompelieren eines Codes entfernt der Compiler jegliche Kommentare, sodass sie im Maschinencode nicht mehr vorhanden sind. Es gibt zwei Arten von Kommentaren: Einzeilige und Mehrzeilige.

<details>
<summary>Mehrzeilige Kommentare</summary>

Diese Art von Kommentaren eignet sich gut, wenn man längere Beschreibungen in den Quellcode schreiben möchte.

Sie werden mit /* eingeleitet und mit */ beendet.

</details>

<details>
<summary>Einzeilige Kommentare</summary>
Diese Art von Kommentaren ist dafür da, um einzelne Zeilen zu kommentieren.

Sie werden mit // eingeleitet.

</details>

<details>
<summary>Hinweis</summary>

Kommentare kann man auch dazu nutzen, um Teile des Quellcodes auszukommentieren! Auskommentierte Programmteile werden nicht ausgeführt.

</details>

Beispiel:

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
    /*
    Das hier ist ein mehrzeiliger Kommentar.
    */

    printf("Kommentare sind ein nuetzliches Tool!\n");
    // Das hier ist ein einzeiliger Kommentar.
    
    return 0;
}
```
