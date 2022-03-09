
# Aufgabe 0

Herzlich Wilkommen zu Ihrer ersten Programmieraufgabe in C

Ihr erstes Programm soll folgendes können: 
- [ ] Ihren Namen, Studiengang und E-Mail auf der Konsole ausgeben. 
- [ ] Die Summe von 2 Zahlen berechnen und ausgeben. Provozieren Sie dabei auch einen Überlauf. 
- [ ] den Kapitalertrag für ein Jahr von 180 € bei 2% Verzinsung korrekt ausgeben.Erzeugen Sie danach durch Wahl entsprechender Datentypen einen Rechenfehler.
- [ ] die Zahl 24 durch Anwendung von Bit-Operatoren vierteln.


## Vorbereitung

Binden Sie zu Beginn die benötigten Bibliotheken in Ihr Programm ein. (Mit dem #include Befehl) Überlegen Sie welche Sie brauchen.

Danach können Sie die main() Funktion anlegen und in dieser Ihr Programm schreiben. 


### Namen, Studiengang und E-Mail

Schreiben Sie einen Code in Ihre main()-Funktion, die  Ihren Vor- und Nachnamen auf dem Bildschirm ausgibt.
Geben Sie bei der Ausgabe auch an welcher der Vor- und der Nachname ist.

Eine Zeile tiefer soll nun Ihr Studiengang zusätzlich auf dem Bildschirm ausgegeben werden.

Im letzten Schritt soll nun Ihre E-Mail ebenfalls in einer neuen Zeile auf dem Bildschirm ausgegeben werden. Fügen Sie das @ als Ansi-Code ein. 

#### Tipp
<details>
<summary>Click to expand</summary>

Benutzen Sie den printf() für die Bildschirmausgaben. Nutzen Sie dabei auch Steuerzeichen (Siehe Vorlesungsfolien). Sonderzeichen können auch über Hexadezimal- oder Oktalzahlen eingebunden werden. 

</details>

#### Tipp 2
<details>
<summary>Click to expand</summary>

Damit die Ausgabe nicht in der selben Zeile steht benutze den Zeilenverschub mit "\n".

</details>

### Summe

Legen sie nun zwei Integer Variablen an und initialisieren Sie diese mit beliebigen Werten. 
Geben sie danach die Summe der beiden Zahlen zwei Zeilen unter der vorherigen Ausgabe aus. Erzeugen Sie einen Überlauf durch entsprechende Werte. 

#### Tipp Überlauf
<details>
<summary>Click to expand</summary>

Um einen Überlauf zu erzeugen müssen Sie an den "Rand" des Wertebereiches. Diese können Sie z.B. den Vorlesungsfolien entnehmen oder einfach durch probieren rausfinden. Sie können auch überlegen welche Werte Sie wohl mit 32 Bit (Integer auf Ihrem System) oder 16 Bit (Short auf Ihrem System) erreichen können. 
Sie können die Maxima auch leicht erreichen, wenn Sie die Bibliothek limits.h einbinden. Sie können dann Ihrer Variablen dann den Wert INT_MAX zuweisen. Kleiner sind die Zahlen in einer Short-Variable. Das Maximum heißt dort SHRT_MAX.

</details>



### Kapital

Sie haben ein Kapital von 180€, das jährlich mit 2% verzinst wird.
Berechnen sie den Gewinn nach einem Jahr und geben Sie dieses auf dem Bildschirm aus. Erzeugen sie durch die Wahl entsprechender Datentypen einen Rechenfehler. Das passiert z.B. bei Berechnungen wie 2/100 da dann eine Integerdivision durchgeführt wird. Probieren Sie verschiedene Varianten aus. 

### Bit-Operatoren

Legen sie nun einen Integervariable mit dem Wert 24 an.
Diese Zahl soll durch Bit-Operatoren geviertelt werden.
Geben Sie das Ergebnis auf dem Bildschirm aus.


#### Tipp
<details>
<summary>Click to expand</summary>

Überlegen sie sich, wie die 24 und das Ergebniss 24/4 als Binärzahl aussehen.   

</details>

Herzlichen Gl\x9Ackwunsch die hast gerade dein erstes Programm in C geschrieben !



## Level 2

<details>
<summary>Click to expand</summary>

Hier was für die Fortgeschrittenen!

Alle Angaben sollen nun nicht im printf() Befehl stehen, sonder von der Tastatur eingelesen werden.
</details>
© 2021 GitHub, Inc.
