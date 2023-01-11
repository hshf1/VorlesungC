<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/7"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 2

Das zu entwickelnde Programm soll den Mittelwert von drei eingegebenen reellen Zahlen berechnen. Nach der Ausgabe der Aufgabenstellung sind die drei Zahlen anzufordern. Der berechnete Mittelwert ist im Standardformat mit 3 Nachkommastellen auszugeben.

<details>
<summary>Tipp - Grundbausteine</summary>

Für das Programm werden vier Variablen benötigt, die vor der Zuweisung deklariert werden müssen. Wählen Sie die passenden Datentypen! Es wird nur die Standardbibliothek benötigt.

</details>

<details>
<summary>Tipp - einlesen</summary>

Um den Variablen die Werte zuzuordnen, kann ```scanf()``` verwendet werden. Wichtig: Bei der Eingabe muss ein Punkt statt einem Komma verwendet werden.

</details>

<details>
<summary>Tipp - Berechnung</summary>

Der Mittelwert ist das Ergebnis aus der Summe der Einzelwerte, geteilt durch die Anzahl der verwendeten Werte. 

</details>

<details>
<summary>Tipp - Formatierung</summary>
  
Bei der Ausgabe über ```printf()``` kann aus der Kombination von einem Punkt "." mit einer Zahl festgelegt werden wie viel Kommastellen auf dem Bildschirm angezeigt werden. Diese Kombination wird zwischen das Prozentzeichen und dem Zeichen für den Datentypen gesetzt.
  
  ```C
  float f = 3.141596;
  
  printf("Pi ist: %.4f", f); // Die Ausgabe ist -> Pi ist: 3.1415
  ``` 
  
  </details>
  
<ins><b>So kann die Ausgabe dann aussehen</b></ins>
<br />

![bsp_ausgabe](https://user-images.githubusercontent.com/100713757/192164743-841e55dd-929b-47d7-b9ad-9650aa43ba82.gif)
