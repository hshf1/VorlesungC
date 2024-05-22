<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/13"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 8

In diese Aufgabe vertiefen Sie das Thema Unterfunktionen und wenden es dies auf das neue Thema "Arrays" (Felder) an.

##  8.1


Erstellen Sie ein Feld von 10 int-Werten und Initialisieren Sie das Feld mit beliebigen Daten.

* Berechnen Sie die Summe aller Feldelemente und geben Sie die Summe aus.
* Berechnen Sie den Mittelwert aller Feldelemente und geben Sie diesen aus.
* Ermitteln Sie das größte Feldelement und geben Sie dessen Position (Index) und Wert aus.

Das alles soll in der Hauptfunktion main() geschrieben werden. Erstellen Sie vor der Programmerstellung ein Struktogramm.

<details>
<summary>Tipp - Summe berechnen</summary>
  
Berechnen Sie die Summe des Feldes mit der Hilfe einer for() oder while() Schleife.

</details>

<details>
<summary>Tipp - größtes Feldelement finden</summary>

Erstellen Sie sich eine Hilfsvariable für den größten Wert und eine weitere für die Position des größten Werts im Feld. 
Überprüfen Sie mit einer Schleife jeden Wert des Feld und testen Sie, ob dieser größer ist als der Wert Ihrer Hilfvariable. Wenn das so ist, dann speichern Sie den neu gefunden Wert und die Position in den Hilfsvariablen ab.
  
Frage: Mit welchen Werten sollten Ihre Hilfsvariablen initialisiert werden? 

</details>

<ins><b>So kann die Ausgabe dann aussehen</b></ins>
<br />

![bsp_ausgabe](https://user-images.githubusercontent.com/100713757/192598275-2a5b7307-af24-4baa-a636-e0d724131964.gif)

##  8.2

<details>
<summary>Klicken zum Öffnen</summary>

Ihr Programm soll nun so erweitert/verändert werden, dass die unten aufgelisteten Aufgaben in Unterprogrammen umgesetzt sind.

- [ ] Summe berechnen. Neue Funktion: int summeBerechnen( int [10] )
  
  Berechnung der Summe aller Elemente des übergebenen Feldes int [10]

- [ ] Mittelwert berechnen. Neue Funktion:  float mittelwertBerechnen( int [10] )
  
  Berechnung des Mittelwerts aller Elemente des übergebenen Feldes int [10]

- [ ] Größtes Feldelement und Stelle suchen. Neue Funktion: int maximumBerechnen( int [10], int* )
  
Suche nach dem größten Feldelement und Ausgabe seiner Position (Index) im Feld.

</details>

## 8.3

<details>
<summary>Klicken zum Öffnen</summary>
  Erweitern Sie nun Ihr Programm um folgende Funktionen.
  

### Feld einlesen
  
  Der Benutzer soll ein beliebiges 10er Feld (Integer)
  (Siehe Aufgabe 8, Teil 1) über die Tastatur eingeben können.
  
  > void feld_einlesen(int [10])
  


### Feld ausgeben

Entwickeln Sie ein Unterprogramm, um ein 10er Feld am Bildschirm anzeigen zu können.

>void feld_ausgeben (int [10])
>

### Feld berechnen

Berechnen Sie für das vom Benutzer eingegebene Feld die Summe, den Mittelwert, das größte Feldelement und zeigen Sie das Feld an.
Benutzen Sie dafür die Unterprogramme aus 8.2


  </details>
  
  
  ## 8.4

<details>
<summary>Klicken zum Öffnen</summary>
  
  Erweitern Sie Ihr Programm um ein weiteres Unterprogramm, welches das Feld von klein nach groß sortiert. 
  
  > void feld_sortieren (int[10])
  > 

Geben Sie das Feld vor und nach dem Sortieren aus.


### Tipp 1 (Info) - Felder sortieren
<details>
<summary>Klicken zum Öffnen</summary>
Das Sortieren von Feldern ist ein ganz wichtiger Bestandteil der Programmierung. 
Zu diesem Thema gibt es gleich eine ganze Reihe an Verfahren, die sich in Komplexität und
Geschwindigkeit sehr unterscheiden.

Der hier vorgestellte Algorithmus ist der 'Selection-sort'.
Der Algorithmus ist vergleichsweise langsam, aber einfach.
Es werden 2 ineinander geschachtelte Schleifen verwendet.

   >   Bsp: mit 5 Werten: f[0]...f[4] enthalten 10 5 2 1 7
   >   
   >   1. Durchlauf i=0
   >   
   >   i:0    j: läuft von 1 bis 4. Falls f[j] kleiner als f[i] ist, dann tausche beide Werte
   >   
   >   i=0  j=1;  10 5 2 1 7 -> f[1]=5  <   f[0]=10 -> tausche: 5 und 10
   >   
   >   i=0  j=2;  5 10 2 1 7 -> f[2]=2  <   f[0]=5 -> tausche: 5 und 2
   >   
   >   i=0  j=3;  2 10 5 1 7 -> f[3]=1  <   f[0]=2 -> tausche: 2 und 1
   >   
   >   i=0  j=4;  1 10 5 2 7 -> f[4]=7  <   f[0]=1 _Nein_ -> nicht tauschen
   >   
   >   f[0] ist das kleinste Element, weiter mit den restlichen Elementen
   >

   >   2. Durchlauf i=1
   >   
   >   i:i    j: läuft von 2 bis 4. Falls f[j] kleiner als f[i] ist, dann tausche beide Werte
   >   
   >   i=1  j=2;  1 10 5 2 7 -> f[2]=5  <   f[1]=10 -> tausche: 5 und 10
   >   
   >   i=1  j=3;  1 5 10 2 7 -> f[3]=2  <   f[1]=2 -> tausche: 5 und 2
   >   
   >   i=1  j=4;  1 2 10 5 7 -> f[4]=7  <   f[1]=2 _Nein_ -> nicht tauschen
   >   
   >   f[0] und f[1] sind sortiert, weiter mit dem Rest
   >   
   >   ........... 

 ## !Achtung!
 
 Der Code, den Sie hier sehen werden, sortiert das Feld _nicht_ von kleine (links) nach groß (rechts).
 Er veranschaulicht allerdings den oben genannten Algorithmus.
 
 
Die Variable m ist 1, also werden die Werte 5 und 6 verglichen. Da 5 kleiner als 6 ist die if-Bedingung erfüllt und die beiden Zahlen werden getauscht.

  ![Screenshot (22)](https://user-images.githubusercontent.com/79829648/116119758-0fdc6b00-a6bf-11eb-85ed-0fe9caceb7be.png)
  ![Screenshot (23)](https://user-images.githubusercontent.com/79829648/116119966-4f0abc00-a6bf-11eb-8eb5-73b9500347f6.png)
  ![Screenshot (24)](https://user-images.githubusercontent.com/79829648/116120004-5df16e80-a6bf-11eb-8ac1-17c1d179770b.png)
 
 Das nächste mal werden die 3 und die 5 getauscht.
 ![Screenshot (28)](https://user-images.githubusercontent.com/79829648/116120153-85e0d200-a6bf-11eb-9367-c5016afdbce9.png)
 
 Nachdem alle Zahlen für die k-Schleife durchlaufen wurden, wird das aktuelle Feld ausgegeben und die Schleife wiederholt sich jetzt mit i=1.
 ![Screenshot (30)](https://user-images.githubusercontent.com/79829648/116120490-dfe19780-a6bf-11eb-97f9-cfcee8e6c36d.png)


  </details>
  </details>


  ## 8.5

<details>
  <summary>Klicken zum Öffnen</summary>
  Erweitern Sie nun Ihr Programm um folgende Funktionen.
  

  ### Feld mit Zufallszahlen Initialisieren
  
  Das Feld soll jetzt mit Zufallszahlen initialisiert werden.  
  Entwickeln Sie die Funktion
  > void feld_initRand(int [10])
  > 
  nutzen Sie für die Initialisierung des Feldes folgende Funktionen.

  >rand() in <stdlib.h>
  >time() in <timer.h>
  >
  Die Funktion rand() gibt eine pseudo-zufällige Ganzzahl zwischen 0 und RAND_MAX aus. RAND_MAX ist in stdlib.h deklariert.
  Um den Randomizer zu initialisieren (einen seed-Wert zu geben), wird die Funktion srand (time(NULL)); genutzt.
  Damit wird der Seed-Wert auf die seit 1.1.1970 vergangen Sekunden gesetzt.

  Definieren Sie ebenso eine #define Variable, MAX_ZUFALLSZAHL, welche die größte Zufallszahl darstellt, die Sie ermitteln wollen.

  ### Tipp 1 (Info) - feld_initRand
  <details>
  <summary>Klicken zum Öffnen</summary>
  So könnte der Code aussehen:
      <details>
 <summary> Klicken zum Programmvorlage zu öffnen </summary>
        
 ```C
#include <stdio.h>
    
    
 int main(){
    
  int init;
  char reihenfolge;
  short anz;
  // Feld array mit 10 Feldern vom Typ short definieren und jedes Element
  // mit 0 initialisieren
    
    

    
 ```   
</details>

  </details>
</details>




  
  # Level 2 ~ Freiwillig - Klausuraufgabe zum Thema
  <details>
 <summary> Klicken zum öffnen </summary>
 SS 18 [5]
     
 Gegeben ist das folgende Programm:  
      <details>
 <summary> Klicken zum Programmvorlage zu öffnen </summary>
        
 ```C
#include <stdio.h>
    
    
 int main(){
    
  int init;
  char reihenfolge;
  short anz;
  // Feld array mit 10 Feldern vom Typ short definieren und jedes Element
  // mit 0 initialisieren
    
    
  puts("Bitte L\x84nge, Initialwert und Reihenfolge angeben!");
  // geforderte Werte per scanf einlesen
    
    
    
  // Funktion aufrufen um Feld mit Initialwerten zu füllen
    
    
    
  if(reihenfolge == '-'){
    // Funktionsaufruf: Feld von links nach rechts ausgeben
    
    
  }
  else {
    // Funktionsaufruf: Feld von rechts nach links ausgeben
    
    
  }
    
    
  printf("= %d\n",FeldAddition(array, anz));
  return 0;
} 

void FeldFuellen(short array[], short anz, int init)
    // Alle Elemente bis anz werden initialisiert Angefangen mit init
    // und dann jeweils um eins inkrementiert
    // also: array[0] = init; array[1] = init+1 usw.
    
    
    
}
    
int FeldAddition(short array[], short anz){
  int ergAdd = 0; // Ergebnis der Summe

  // alle Elemente bis anz werden aus dem Feld array aufsummiert und in
  // ergAdd gespeichert
  // ergAdd ist zurückzugeben
    
    
    
}
    
void FeldAusgeben(short array[], short anz, char reihenfolge){
    
  // Die Elemente des Feldes array sollen nacheinander ausgegeben werden.
  // In Abhängigkeit des dritten Parameters wird das Feld bei '+' von links
  // nach rechts ausgegeben oder bei '-' andersherum.
  // Die Anzahl der auszugebenen Elemente steht im zweiten Parameter.
    
    
    
}
    
 ```   
</details>
        
__Programmerläuterung__:   
Das Programm fordert drei Parameter an. Der Erste gibt die Anzahl der Felder an. Der Zweite gibt den Initialwert
an und der Dritte gibt an, ob die Zahlenreihe aufsteigend (+) oder absteigend (‐) ausgegeben wird. Vgl. untere
Abbildungen.
        [Bil
 __Hinweis:__ Fügen Sie Ihren Quellcode direkt in das obere Programm ein.   
        
**Ihre Aufgabe:** 
        
  a) Vervollständigen Sie die Funktion ```FeldFuellen```. Die Funktion füllt das Array ```array``` und beginnt
      das erste Feld mit ```init```. Alle anderen Werte werden jeweils um eins inkrementiert.
        
  b) Vervollständigen Sie die Funktion ```FeldAddition```. Die Funktion summiert die ersten ```anz```‐Elemente des
     Feldes auf und speichert diese ab. Anschließend wird die Summe zurückgeliefert.
        
  c) Vervollständigen Sie die Funktion ```FeldAusgeben```. Abhängig vom Übergabeparameter wird der Inhalt des 
      Arrays aufsteigend (+) oder absteigend (‐) auf dem Bildschirm ausgegeben. (keine Modifikation des Arrays nötig).
        
  d) Schreiben sie in den oberen Quellcode die drei fehlenden Funktionsprototypen.
        
  e) Definieren Sie in ```main()``` das Feld mit dem Namen ```array```. Es soll vom Typ ```short``` sein und 10
      Elemente beinhalten. Alle Elemente sind mit 0 vorzuinitialisieren.
        
  f) Lesen Sie im oberen Quellcode die drei Werte (Feldlänge, Initialwert und Reihenfolge) per ```scanf``` ein.
        
  g) Rufen Sie im oberen Quellcode an den vorgegebenen Stellen die geforderten Funktionen mit korrekten Parametern auf.

        
 </details>
