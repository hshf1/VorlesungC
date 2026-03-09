<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Aufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/05_umfragen"><img src="https://img.shields.io/badge/Aufgabe_bewerten-informational?logo=c" height="25"/></a>

# Aufgabe 0

Herzlich Wilkommen zur ersten Programmieraufgabe in C

Das erste Programm soll folgendes können: 
- [ ] Ihren Namen, Studiengang und E-Mail auf der Konsole ausgeben. 
- [ ] Die Summe von 2 Zahlen berechnen und ausgeben. Provozieren Sie dabei auch einen Überlauf. 
- [ ] den Kapitalertrag für ein Jahr von 180 € bei 2% Verzinsung korrekt ausgeben.Erzeugen Sie danach durch Wahl entsprechender Datentypen einen Rechenfehler.
- [ ] die Zahl 24 durch Anwendung von Bit-Operatoren vierteln.

## Vorbereitung

Zu Beginn sind die benötigten Bibliotheken in das Programm einzufügen. (Mit dem #include Befehl) Welche sind für die obigen Aufgaben nötig?

Danach kann die main() Funktion angelegt und in dieser das Programm geschrieben werden. 

### Namen, Studiengang und E-Mail

Es ist ein Code in die main()-Funktion zu schreiben, die Ihren Vor- und Nachnamen auf dem Bildschirm ausgibt. Bei der Ausgabe sollte auch angegeben werden, welcher der Vor- und der Nachname ist.

Eine Zeile tiefer soll nun Ihr Studiengang zusätzlich auf dem Bildschirm ausgegeben werden.

Im letzten Schritt soll nun Ihre E-Mail ebenfalls in einer neuen Zeile auf dem Bildschirm ausgegeben werden. Das @ ist als Ansi-Code einzugeben. 

<details>
<summary>Tipp - Bildschirmausgabe</summary>

Für die Bildschirmausgabe wird printf() genutzt. Dabei können auch Steuerzeichen genutzt werden (Siehe Vorlesungsfolien). Sonderzeichen können auch über Hexadezimal- oder Oktalzahlen eingebunden werden. 

</details>

<details>
<summary>Tipp - neue Zeile in der Ausagbe</summary>

Damit die Ausgabe nicht in der selben Zeile steht kann der Zeilenverschub mit "\n" genutzt werden.

</details>

### Summe

Nun sind zwei Integer Variablen zu erstellen und diese mit beliebigen Werten zu initialisieren. Danach ist die Summe der beiden Zahlen zwei Zeilen unter der vorherigen Ausgabe auszugeben. Außerdem soll durch entsprechende Werte ein Überlauf erzeugt werden. 

<details>
<summary>Tipp - Überlauf</summary>

Um einen Überlauf zu erzeugen müssen Sie an den "Rand" des Wertebereiches. Diese können Sie z.B. den Vorlesungsfolien entnehmen oder einfach durch probieren rausfinden. Sie können auch überlegen welche Werte Sie wohl mit 32 Bit (Integer auf Ihrem System) oder 16 Bit (Short auf Ihrem System) erreichen können. Sie können die Maxima auch leicht erreichen, wenn Sie die Bibliothek limits.h einbinden. Sie können dann Ihrer Variablen dann den Wert INT_MAX zuweisen. Kleiner sind die Zahlen in einer Short-Variable. Das Maximum heißt dort SHRT_MAX.

</details>

### Kapital

Sie haben ein Kapital von 180€, das jährlich mit 2% verzinst wird. Berechnen sie den Gewinn nach einem Jahr und geben Sie dieses auf dem Bildschirm aus. Erzeugen sie durch die Wahl entsprechender Datentypen einen Rechenfehler. Das passiert z.B. bei Berechnungen wie 2/100 da dann eine Integerdivision durchgeführt wird. Probieren Sie verschiedene Varianten aus. 

### Bit-Operatoren

Legen sie nun einen Integervariable mit dem Wert 24 an.
Diese Zahl soll durch Bit-Operatoren geviertelt werden.
Geben Sie das Ergebnis auf dem Bildschirm aus.

<details>
<summary>Tipp - Bit-Operation</summary>

Wie sehen die 24 und das Ergebniss 24/4 als Binärzahl aus?   

</details>

Herzlichen Gl\x9Ackwunsch! Das erste Programm in C wurde geschrieben!

<ins><b>So kann die Ausgabe dann aussehen</b></ins>
<br />

![bsp_ausgabe](https://user-images.githubusercontent.com/100713757/192340681-2ee3e8a6-0b10-4b5d-b36e-1536b4461f0d.gif)

## Level 2

<details>
<summary>Für Level 2 hier klicken</summary>

Hier was für die Fortgeschrittenen!

Alle Angaben sollen nun nicht im printf() Befehl stehen, sonder von der Tastatur eingelesen werden.
</details>
