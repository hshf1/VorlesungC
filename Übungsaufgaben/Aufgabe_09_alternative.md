<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/12"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 9

## Teil 1

<details>
<summary>Aufgabenstellung zu Teil 1</summary>

Schreiben Sie ein C-Programm, das eine einfache Notenverwaltung für Schulklassen ermöglicht. Das Programm soll den Benutzer nach der Gesamtanzahl der Schüler in der Klasse fragen und dann die Möglichkeit bieten, die Noten für jeden Schüler einzugeben. Anschließend sollen die eingegebenen Noten ausgegeben werden.

Legen Sie eine (Zeiger-)Variable namens "grade_list" und eine Variable namens "size" an, beide vom Typ "int*". Die Variable "grade_list" wird später auf ein dynamisches Array zeigen, in dem die Noten gespeichert werden, und "size" wird die Anzahl der Schüler in der Klasse festhalten.

Fragen Sie den Benutzer nach der Gesamtanzahl der Schüler in der Klasse.

Erstellen Sie darauf folgend ein dynamisches Array, um die Noten der Schüler zu speichern, basierend auf der eingegebenen Anzahl von Schülern. Verwenden Sie dafür die "calloc"-Anweisung.

Befüllen Sie nun das Array, auf dass die Variable "grade_list" verweist, mit Noten und geben Sie dieses anschließend auf der Konsole aus.

<details>
<summary>Hinweis zu calloc</summary>

calloc und malloc sind Funktionen, die Speicherplatz auf Ihrem Rechner reservieren. Der Unterschied zwischen den beiden liegt darin, dass calloc den reservierten Speicher auf 0 setzt, während malloc dies nicht tut. Nach der Reservierung geben beide Funktionen einen Zeiger auf den Anfang des reservierten Speichers zurück.

Beispielaufruf für calloc:

```c

int *pZeiger;
pZeiger = (int*) calloc(5, sizeof(int));

```

Verwendung von calloc:

* calloc gibt einen "untypisierten" void-Zeiger zurück. Durch sogenanntes Typecasting (int*), (float*), usw. kann dieser in den gewünschten Zeiger-Typ umgewandelt werden.
* Bei der Verwendung werden die Anzahl der Elemente und die Größe jedes Elements angegeben.
     - calloc(5, 4) reserviert Speicherplatz für fünf Werte mit jeweils 4 Bytes (insgesamt 20 Bytes).
     - calloc(5, sizeof(int)) ist eine gute Praxis, da die Größe des int-Datentyps nicht auf allen Systemen 4 Bytes beträgt. Wenn sie jedoch 4 Bytes beträgt, entspricht dies dem Aufruf calloc(5, 4).

https://www.tutorialspoint.com/c_standard_library/c_function_calloc.htm

</details>
</details>

## Teil 2

<details>
<summary>Aufgabenstellung zu Teil 2</summary>

An dem vorherigen Programm sollen nun paar Änderungen vorgenommen werden. Das Befüllen des Array mit Noten und die Ausgabe auf der Konsole sollen nun in zwei Funktionen ausgelagert werden.

Für das Befüllen des Array soll die Funktion "fillArray" erstellt werden. Sie soll den Rückgabetyp void haben und es mölich sein ihr ein dynamisches int-Array (bzw. eine Zeiger-Variable des Typs int) und die Größe des Arrays (int size) als Argumente zu übergeben. Zudem soll die Funktion prüfen, ob die eingebenen Noten keine falschen Werte haben. Konkret heißt das, die Funktion soll prüfen, ob die vom User eingebene Zahl zwischen 1 und 6 liegt. Tut Sie es nicht soll der User darauf hingewiesen werden, dass die Eingabe falsch war, und aufgefordert werden den richtigen Wert einzugeben.

Die Funktion zur Ausgabe der Noten auf der Konsole soll ebenfalls den Rückgabetyp void haben und "showArray" heißen. Auch dieser Funktion sollen eine Zeiger-Variable des Typ int und die Größe des Array als Argumente übergeben werden können. Die Ausgabe auf der Konsole soll wie im Aufgabenteil davor aussehen.

</details>

## Teil 3

<details>
<summary>Aufgabenstellung zu Teil 3</summary>

Nun soll das Programm um die void-Funktion "calculateAverageGrade" erweitert werden, mit der es möglich ist die Durchschnittsnote zu bestimmen. Auch an diese Funktion sollen eine Zeiger-Variable des Typ int und die Größe des Array als Argumente übergeben werden können. 
Die Funktion soll alle Noten zu einer Summe addieren und diese anschließend durch die Anzahl der Schüler dividieren. Die Durchschnittsnote soll exakt berechnet werden und mit einer Nachkomma-Stelle auf der Konsole ausgegeben werden.

</details>

## Teil 4

<details>
<summary>Aufgabenstellung zu Teil 4</summary>

Die Ausgabe des Progamms soll verändert werden. Statt die einzelnen Noten auf der Konsole auszugeben soll nun der Notenspiegel, in Form einer Tabelle, ausgeben werden.

Entfernen Sie zunächst den entsprechenden Funktionsaufruf in der main-Funktion, der dafür sorgt, dass die einzelnen Noten auf der Konsole ausgegeben werden.

Eweitern Sie das Programm nun um die Funktion "determineGradesDistribution" des Ruckgabetyps "void". An die Funktion sollen eine Funktionsvariable und die Größe des Array als Argumente übergeben werden. Die Funktion soll zählen, wie oft jede einzelne Note vorkommt und das Ergebnis anschließend, in Form einer Tabelle, auf der Konsole ausgeben. Die Ausgabe auf der Konsole kann bspw. so aussehen:

Notenspiegel:

| Note | Anzahl |
|:----:|:------:|
|   1  |    1   |
|   2  |    3   |
|   3  |    5   |
|   4  |    3   |
|   5  |    2   |
|   6  |    0   |
    
</details>

## Teil 5

<details>
<summary>Aufgabenstellung zu Teil 5</summary>

Nun soll das Programm um die Funktionen "findBestGrade" und "findWorstGrade" erweitert werden. Beide sollen den Ruckgabetyp "int" haben. Die Funktionen sollen eine Zeiger-Variable und die Größe des Array als Argument erhalten können.

"findBestGrade" soll das Array grade_list nach der, darin vorkommenden, besten Note durchsuchen und zurückgeben. "findWorstGrade" soll entsprechend nach der schlechtesten Note suchen und sie zurückgeben.

Rufen Sie beide Funktionen dann in der main-Funktion auf und geben Sie die beste und schlechteste Note auf der Konsole aus.

</details>
