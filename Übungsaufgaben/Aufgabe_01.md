# Aufgabe 1

Das zu entwickelnde Programm soll die Summe von zwei ganzen Zahlen berechnen.
Nach der Ausgabe der Aufgabenstellung sind die beiden Werte anzufordern.
Die berechnete Summe ist zwei Zeilen tiefer auszugeben.

- [ ] Werte einlesen
- [ ] Summe berechnen

## Tipp - Werte einlesen mit ```scanf()```
<details>
<summary>Klicken zum Öffnen</summary>
  
Mit ```scanf()``` können Werte von der Tastatur eingelesen und in Variablen gespeichert werden. ```scanf()```ist vom Aufbau ähnlich zu ```printf()```.
  
 ### Aufbau scanf() und printf()
  <details>
<summary>Klicken zum Öffnen</summary>
    In der Variable i ist zu Beginn der Buchstabe B gespeichert.
    
```C
  printf("Buchstabe 1: %c",i); // Es wird der Text: *Buchstabe 1: B* ausgegeben.
  scanf("%c", &i); // Hier wird der Buchstabe, der von der Tastatur eingegeben wird in i gespeichert.
```
  
</details>
</details>
  
## Tipp - Rechnen mit Variablen
<details>
<summary>Klicken zum Öffnen</summary>

  Anstelle von festen Werten können auch Rechenoperationen mit Variablen durchgeführt werden.
  
  ```C
  int a=2;
  int b=7;
  int c;
  
  c = a*b+a; // In der Variable c steht nun der Wert 16
  ```
</details>
