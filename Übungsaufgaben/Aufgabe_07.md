<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/12"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>
<a href="https://moodle.hs-hannover.de/course/view.php?id=20976"><img src="https://img.shields.io/badge/Quizfragen-orange?logo=c" height="25"/></a>

# Aufgabe 7

<details>
<summary>Rückblick Unterfunktionen</summary>
  
Unterfunktionen sind immer dann sehr hilfreich, wenn sie eine Aufgabe erfüllen, welche mehrfach benötigt wird. (z.B. in Schleifen) Was ist für die Unterfunktion notwendigß Welchen Rückgabe-Typ soll die Funktion haben, welche und wie viele Parameter muss der Unterfunktion übergeben werden? Es kann nur ein Wert zurückgegeben werden!
  
  ```C
  int berechneSumme(int Zahl1, int Zahl2){ 
    /* Die Unterfunktion ist vom Typen Int und bekommt zwei Integerwerte übergeben.
    Diese heißen für die Unterfunktion Zahl1 und Zahl2
    Im Hauptprogramm können die Werte andere Namen haben(s.u.)! */
    int Summe;                // Nur für die Unterfunktion wird eine weitere Variable mit dem Namen Summe angelegt
    Summe = Zahl1 + Zahl2;    // In Summe wird das Ergebnis aus Zahl1 plus Zahl2 gespeichert
    return Summe;             // Die Zahl aus Summe ist der Rückgabewert
  }
  
  int main (){
  
  int ZahlA = 5;
  int ZahlB = 12;
  int ZahlC;
  
  ZahlC = berechneSumme(ZahlA, ZahlB);
  /*ZahlC wird der Rückgabewert aus der Unterfunktion berechneSumme() zugewiesen.
    ZahlA aus dem Hauptprogramm heißt für die Unterfunktion Zahl1 und ZahlB ist Zahl2.
    Wichtig ist, dass die Datentypen übereinstimmen, sonst kommt es zu Fehlern.*/
  
  }
  ```

</details>

Für das Projekt ist ein Widerstand zu suchen. Dafür steht der Baukasten der [E12 Reihe](https://de.wikipedia.org/wiki/E-Reihe) mit den Widerständen von 1 Ohm bis 10.000 Ohm zur Verfügung. Leider ist kein Widerstand dabei, der nah genug am Wunschwert liegt. Diesem ist durch 2 [parallel geschaltete Widerstände](https://studyflix.de/elektrotechnik/parallelschaltung-widerstand-4533) aus der E12 Reihe möglichst nahezukommen. Es ist ein Programm zu entwickeln, das alle Kombinationen automatisch erstellt und das beste Widerstandspaar für Sie ermittelt und ausgibt.<br />

Folgenden Punkte sind mit dem Programm zu erfüllen:  

### 7.1 Unterfunktion "berechneE12"

Die Unterfunktion "berechneE12" soll zu der Widerstandsnummer den passenden Widerstandswert zurück geben.
 
         Beispiel: 
         float Wid = berechneE12(3); // Wid sollte nun den Wert 1.77828 enthalten

<details>
<summary>Tipp - E12 Reihe</summary>

Es kann die Funktion pow() mit 10 hoch i/12 verwendet werden. pow() befindet sich in der math.h Bibliothek.
>float Wid = pow(10, i/12) // i ist eine Zählvariable in diesem Fall
>

 </details>

### 7.2 Unterfunktion "E_Reihe"

Mit der Unterfunktion "E_Reihe" ist die E12 Reihe bis 10.000 Ohm auszurechen und tabellarisch auszugeben. 

         Beispiel: 
         Nr: 1 Widerstand:      1.0
         Nr: 2 Widerstand:      1.2
         Nr: 3 Widerstand:      1.5
         usw. 
         Es ist mit einer Nachkommastelle und einer Feldweite von 8 Zeichen auszugeben. (%8.1f)
         Dabei ist die Berechnung mittels der Unterfunktion "berechneE12" durchzuführen.
         Wieviele Widerstände gibt es kleiner/gleich 10.000 Ohm?
      
### 7.3 Unterfunktion "berechneR_Parallel"

In der Unterfunktion "berechneR_Parallel" sind die Parallelwiderstände zu berechnen und das Ergebnis zurückzugeben.

        Beispiel:
        float Wid = berechneR_Parallel(500,1000);  // Wid sollte nun den Wert 333.33333 enthalten
          
  <details>
  <summary>Tipp - Berechnung einer Parallelschaltung</summary>
  
  Die Parallelschaltung kann durch 
  
  >(R1*R2)/(R1+R2)
  >
 
   realisiert werden.
  
  </details>

### 7.4 Abfrage Wunschwiderstand

In der Hauptfunktion oder in einer Unterfunktion ist der Wunschwiderstand vom Nutzer abzufragen und einzulesen.

### 7.5 Widerstand finden und speichern

In der Hauptfunktion oder in einer Unterfunktion ist eine Suche nach der besten Kombination von Widerständen zu erstellen, um dem Wunschwiderstand nahe zu kommen. Dazu ist jede Kombination von 2 Widerständen aus der E12 Reihe bis 10.000 Ohm zu prüfen und zu errechnen, wie nahe diese am Wunschwiderstand liegt. 
 
        Beispiel Algorithmus: 
        Nutzer gibt 3 Ohm ein.
        1) Parallelwiderstand Widerstand 0 (1 Ohm) und Widerstand 0 (1 Ohm).   Ergebnis: 0.5 Ohm.  Abstand zum Ziel: 2.5 Ohm.  Beste Näherung bisher: Speichern! 
        2) Parallelwiderstand Widerstand 0 (1 Ohm) und Widerstand 1 (1.2 Ohm). Ergebnis: 0.55 Ohm. Abstand zum Ziel: 2.45 Ohm. Beste Näherung bisher: Speichern!
        3) Parallelwiderstand Widerstand 0 (1 Ohm) und Widerstand 2 (1.5 Ohm). Ergebnis: 0.6 Ohm. Abstand zum Ziel: 2.4 Ohm.   Beste Näherung bisher: Speichern!
        ....
        ?) Parallelwiderstand Widerstand 1 (1.2 Ohm) und Widerstand 1 (1.2 Ohm). Ergebnis: 0.6 Ohm.  Abstand zum Ziel: 2.4 Ohm. 
        ?) Parallelwiderstand Widerstand 1 (1.2 Ohm) und Widerstand 2 (1.5 Ohm). Ergebnis: 0.66 Ohm. Abstand zum Ziel: 2.34 Ohm. 
        usw.
        
        
 **Hinweis:** Sie brauchen eine doppelte For-Schleife um jede Kombination zu erstellen. Speichern Sie die Kombination mit der kleinsten Differenz zum Wunschwiderstand in einer Variablen ab! 
 
 **7.5**  Geben Sie die beste gefundene Kombination von Widerständen aus. Ermitteln Sie die Abweichung in Ohm und Prozent vom Wunschwert und geben Sie diese aus.
  
  
# Info E12
 
 Die E12-Reihe ist eine Widerstandsreihe, welche eine logarithmische Verteilung aufweist.
 Sie hat pro Dekade 12 Widerstandswerte, die sich von Dekade zu Dekade lediglich um den Faktor 10 unterscheiden. Die angegebene Formel im Link reicht aus um alle Widerstände in richtiger Reihenfolge bis 10000 Ohm zu berechnen. (Sie müssen sich mit Dekaden nicht weiter beschäftigen)
 Wie sich die E12-Reihe berechnen lässt, kann unter dem Wikipedia-Link nachgelesen werden.
 
 Wiki:
 https://de.wikipedia.org/wiki/E-Reihe
 
 Beachten Sie das die realen E12-Werte leicht vom Formelergebnis abweichen. ***Nutzen Sie Ihr Formelergebnis als gute Näherung!*** 
  
 ## Tipp - Widerstände berechnen
  
  <details>
  <summary>Klicken zum Öffnen</summary>

 Um alle Widerstandskombinationen zu berechnen, kann eine doppelte for-Schleife verwendet werden 
  
  Beispiel:
  
    int i=0;              //Schleifenvariable
    int k=0;
    int Ergebnis=0;
    float fWid1, fWid2; //Widerstaende
   
    // Doppelte for-Schleife mit den Schleifenvariablen i und k
    for(i=0;i<4;i++){
   
       for(k=0;k<4;k++){
     
        fWid1 = BerechneE12(i); 
        fWid2 = BerechneE12(k); 
        printf("Lieber Studierender: Ist die Kombination aus %f und %f die beste?", fWid1,fWid2); 
       
      }
     }
   
   
Die erste For-Schleife ist die "äußere" Schleife mit Schleifenvariable i. In dieser ist eine zweite Schleife mit der Schleifenvariable k enthalten.
Die äußere Schleife startet. Variable i wird auf 0 gesetzt. Zunächst wird die innere "k"-Schleife 4 Mal durchlaufen. Dann erhöht die äußere i-Schleife i um 1 und dann wird wieder wird die innere k-Schleife 4 Mal durchlaufen. 
Dies wird wiederholt bis soviel Variable i als auch Variable k den Wert 4 erreicht haben. 

</details>
  



## Tipp - Widerstände speichern


<details>
 <summary>Klicken zum Öffnen</summary>
  
   Prüfen Sie in jedem Schleifendurchlauf, ob die Kombination der zwei aktuellen Widerstände die bisher beste ist. Bilden Sie dazu die Differenz zwischen aktuellen Parallelwiderstand und Wunschwiderstand. Prüfen Sie mit einer IF-Abdfrage, ob diese Differenz kleiner ist als alle sonstigen bisher gefundenen. Wenn dem so ist, dann speichern Sie sowohl diesen Differenzwert und auch die beiden aktuellen Widerstände in eigenen Variablen ab. 
   Ist der passendste Widerstand gefunden, kann der Zähler gespeichert und als Rückgabewert übergeben werden.
  
   Überprüfen Sie auch, ob die Differenz negativ ist. (20 Ohm kleiner als der gesuchte Widerstand ist besser als 50 Ohm größer!) Eine Multiplikation mit -1 kann Ihre Differenz wieder positiv machen. 

  </details>

## Zusatz - Eine Programmerweiterung

<details>
 <summary>Klicken zum Öffnen</summary>
  
**Zusatz Teil 1**
  
Das bisherige Programm hat einen Nachteil. Wenn der Nutzer einen Widerstand, wie z.B. 1000 Ohm als Wunschwert angibt, dann versucht das Programm diesen als Kombination von zwei Widerständen zu erzeugen. Das Ergebnis ist jedoch schlechter, als hätten Sie einfach nur den einen Widerstand (1000 Ohm) aus der E12 Reihe genommen. Erweitern Sie ihr Programm so, dass auch geprüft wird, ob ein einzelner Widerstand der E12 Reihe ein noch besseres Ergebnis erzeugt, als die Kombination von zweien. 

Hinweis: Es existiert nur eine Musterlösung für Zusatz Teil 2. Überprüfen Sie ihr Programm nicht durch Vergleich mit einer Lösung, sondern durch Erprobung mit passenden Zahlen. 

### Weiterer Zusatzteil für noch mehr C-Expertise & Gehirntraining 
<details>
 <summary>Klicken zum Öffnen</summary>
  
 **Zusatz Teil2**
  
 Sie dürfen nun 3 Widerstände für Ihren gesuchten Widerstand benutzen und **beliebig** anordnen.
 
 Schreiben Sie ihr Programm so um, dass die gegebene E12 Reihe den gesuchten Widerstand aus allen möglichen Kombinationen (Parallel und Serie) die beste Kombination berechnet.
 Die Widerstandswerte und die verwendete Kombination sind am Ende auf dem Bildschirm auszugeben.

 Testen Sie Ihr Programm mit einem Widerstand von 3542.58 Ohm, welcher wieder über die Tastatur eingegeben werden soll.
 Ihr Programm sollte z.B. folgendes raus finden: Bester Wert 3542.77 Ohm (Widerstand 1 || 2 + 3) 
  
 Welche Werte haben diese 3 Widerstände dann? 
   
 </details>
  </details>

# Level 2 ~ Freiwillig - Reale Klausuraufgabe
<details>
 <summary>Klicken zum Öffnen</summary>
  Klausur SS 21 (Aufgabe 5)   - Eine weitere Übungsaufgabe zur doppelte FOR-Schleife ist diese ganz reale Klausuraufgabe: 
  
  Sie haben in ihrer Firma ein Lager mit 7 Stangen unterschiedlicher Länge. Ein Kunde möchte 2 Stangen kaufen, welche in ihrer Gesamtlänge (also beide Längen addiert) möglichst auf eine von ihm angegebene Wunschlänge kommt. Ziel ist ein Programm, welches Ihnen die bestmögliche Kombination von Stangen ermittelt und ausgibt, wie nah sie damit an die angegebene Wunschlänge kommen. Befolgen Sie die Anweisungen in den Kommentaren im Programm. Überall wo "....." steht müssen Sie etwas programmieren. Sie können das ganze zur besseren übersicht auch  einfach in VSC kopieren.
  
  Teil a)
  ``` C 
  //Geben Sie nötige #include Anweisungen an
  .....
  
  /* Deklaration eines Lagers als ein globales Feld(Array) mit 7 Werten mit dem Namen "aLager".
  Dieses Lager enthält Stangen mit folgenden Längen in Metern: 1,1   2,2   3,3   4,4   5,5   6,6   7,7
  initialisieren Sie ihr Array entsprechend.  */
  .....
  
  int main(){
  // Deklarieren und Initialisieren Sie passende Variablen, wenn Sie diese brauchen.
  .....
  
  printf("Geben Sie die gesuchte Wunschlaenge von 2 Stangen ein:");
  //Lesen Sie diese (Fließkommazahl) über die Tastatur in eine Variable ein.
  .....
  
  /*Berechnen Sie mit einer For-Schleife die gesamte Länge des Stangenmaterials und geben Sie diese
  auf dem Bildschirm mit 2 Nachkommastellen aus.(Aufsummierung aller Elemente) */
  .....
  
  /*Nutzen Sie die vorliegende doppelte for-Schleife, um jede mögliche Kombination von zwei Stangen
  aus den Lagern einmal aufzuaddieren und diese mit der Wunschlänge zu vergleichen. Suchen Sie nach
  der besten Kombination und speichern Sie Position der am besten passenden Stangenelemente und die
  gefundene Länge dieser Lösung ab.  */
  
  
  int x, y;       //Schleifenvariablen für die Lagerplätzeint
  xBest = -1;     //Speichern Sie hier Ihre gefundenen besten Lagerplaetzeint
  yBest = -1;
  float fDiffBest = 1000.0; //Speichern Sie in dieser Variable den kleinsten
                            //gefundenen Abstand zwischen Wunschlänge und Länge der beiden Stangen
  
  //Deklarieren Sie weitere Variablen, wenn Sie diese brauchen
  
  for (x = 0; x < 7; x++){
                    for (y = 0; y < 7; y++){
  //Programmieren Sie einen Schutz, derverhindert, dass zwei gleiche Lagerplätze verglichen werden (x=y)
  .....
  
  //Bilden Sie die Summe der beiden Lagerplätze
  .....
  
  //Bilden Sie die Differenz von Wunschlänge und gefundener Länge
  .....
  
  //Berücksichtigen sie, dass die Differenz auch negativ werden kann
  .....
  
  //Speichern Sie die Kombination ab, wenn Siedie bisher beste ist
  .....
  
  }
 }
  //Tragen Sie die Variablen richtig in die printf-Funktionein
  printf("Stange aus Lager %d und Stange aus Lager %d kommen mit Gesamtlaenge %f am naehesten an den Wunschwert heran.\n",.....
  

  //Geben Sie den Abstand zur Wunschlänge auf dem Bildschirm aus
  .....
}
```
  
  
  
Teil b)
  Schreiben Sie eine Funktion ```zeigeLagerdaten```, welche als Übergabewert das Feld bekommt. Geben Sie die Lagerplätze 1-7 auf dem Bildschirm aus. Berechnen Sie auch die durchschnittliche Stangenlänge(Durchschnitt aller Längen im Lager)und geben Sie diese ebenfalls aus. Diesen Wert soll die Funktion auch zurückgeben. 
  
  
  
  Teil c)
  Schreiben Sie eine Funktion tauscheLagerPlatz. Diese erhält das Feld und zwei Lagerplätze als Übergabewert. Die Stangenlängen an diesen zwei Plätzen sind zu tauschen. (Im Array an den übergebenen Positionen die Werte tauschen
  
   </details>
