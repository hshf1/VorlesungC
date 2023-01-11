<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/6"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 1

Das zu entwickelnde Programm soll die Summe von zwei ganzen Zahlen berechnen. Nach der Ausgabe der Aufgabenstellung sind die beiden Werte anzufordern. Die berechnete Summe ist zwei Zeilen tiefer auszugeben.

<details>
<summary>Tipp - Werte einlesen</summary>
  
Mit ```scanf()``` können Werte von der Tastatur eingelesen und in Variablen gespeichert werden. ```scanf()```ist vom Aufbau ähnlich zu ```printf()```.
  
<details>
<summary>Aufbau scanf() und printf()</summary>
    
In der Variable i ist zu Beginn der Buchstabe B gespeichert.
    
```C
  printf("Buchstabe 1: %c",i); // Es wird der Text: *Buchstabe 1: B* ausgegeben.
  scanf("%c", &i); // Hier wird der Buchstabe, der von der Tastatur eingegeben wird in i gespeichert.
```
  
</details>
<br />
</details>
  
<details>
<summary>Tipp - rechnen mit Variablen</summary>

Anstelle von festen Werten können auch Rechenoperationen mit Variablen durchgeführt werden.
  
  ```C
  int a=2;
  int b=7;
  int c;
  
  c = a*b+a; // In der Variable c steht nun der Wert 16
  ```
</details>

<ins><b>So kann die Ausgabe dann aussehen</b></ins>
<br />

![bsp_ausgabe](https://user-images.githubusercontent.com/100713757/192165224-889f2b7e-204f-48ed-95cb-aed4da67cbc0.gif)
