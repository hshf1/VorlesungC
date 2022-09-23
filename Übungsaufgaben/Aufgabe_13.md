<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/18"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>
<a href="https://moodle.hs-hannover.de/course/view.php?id=20976"><img src="https://img.shields.io/badge/Quizfragen-orange?logo=c" height="25"/></a>

# Aufgabe 13

## Teil 1

Erstellen Sie ein Programm zur Erzeugung einer CSV-Datei in welcher 4 Wertereihen
(Winkel in Grad, Winkel in Bogenmaß, Sinuswert, Cosinuswert) abgespeichert werden.

Hinweis: Eine CSV Datei ist eine Textdatei mit Dateiendung CSV. In der ersten Dateizeile
werden die Überschriften (der Spalte) getrennt durch ein Semikolon geschrieben. Jede
Folgezeile enthält die Werte getrennt durch ein Semikolon.

Über eine Menüfunktion soll auswählbar sein, ob Sie eine CSV-Datei erstellen oder lesen
oder das Programm verlassen möchten.

- Erstellen Sie eine Unterfunktion ```int menu(void)``` in der Sie drei Menüeinträge
anbieten:
  - schreiben, lesen, abbrechen.
  - Vor Ausgabe der Menüpunkte löschen Sie den Bildschirm mit ```system("cls")```; (aus der stdlib.h)
- Über den Rückgabewert wählen Sie mittels ```switch() case```  dann die Funktionen
```void schreibeCSV(void)``` oder ```void leseCSV(void)``` aus.
- In der Funktion ```schreibeCSV``` fragen Sie zuerst die Schrittweite (Winkel in Grad) ab.
Dann öffnen Sie eine Textdatei (beliebiger Name mit Endung .csv) und schreiben die
Überschriften in die Datei. Die Überschriften werden in einer Zeile separiert mit ;
(Semikolon) geschrieben. Danach schreiben Sie in einer Schleife mit der eingegebenen
Schrittweite beginnend ab Winkel 0 bis 360° die o.g. 4 Werte je Zeile separiert mit ;
(Semikolon).

## Teil 2

- Lesen Sie in der Funktion ```leseCSV```  die Datei wieder ein zuerst die Überschrift (```char
Array[50]```) nutzen Sie dafür ```fgets()``` und dann die Messwerte in ein
```Messwertarray[1000][4]``` (```scanf(%f;%f;…)```) Geben Sie die Werte ohne Semikolon
mit Tab und Feldweite 7 bei 3 Nachkommastellen auf dem Bildschirm aus. Lesen Sie max.
100 Werte oder bis Sie EOF erhalten.
- Schreiben Sie eine Funktion
  - ```void ChangeString(char*Zeichenkette, char Suchzeichen, char Ersatzzeichen)```. Dieser Funktion wird ein String übergeben und alle Zeichen die
Suchzeichen entsprechen, werden durch Ersatzzeichen ersetzt.
- Übergeben Sie der Funktion ```ChangeString``` die eingelesene Überschrift und ersetzten Sie
';' durch '\t‚. Geben Sie die so erzeugte neue Überschrift anstelle der alten aus.
- Um die CSV Datei in Excel automatisch öffnen zu können, benötigt Excel (in der
Spracheinstellung Deutschland) als Dezimaltrenner das Komma anstatt den Punkt. Drucken
Sie die Messwerte zuerst in einen String mittels ```sprintf```. Dann ersetzten Sie im String alle
Punkte durch Kommata. Drucken Sie dann den String in die Datei.
- Beim Laden laden Sie zuerst die Messwerte in einen String, dann ersetzten Sie alle
Kommata durch Punkte und lesen dann final die Messwerte aus dem String mittels sscanf
ein.

# Level 2 ~ Freiwillig
<details>
  <summary>klicken zum Öffnen</summary>
WS 16 [4]
  
Das Programm soll einen Messdatenfile einlesen. Die Daten liegen im Textformat vor und sind durch " ; "
(Leertaste Semikolon Leertaste) voneinander getrennt. In der ersten Spalte steht ein Zeitstempel, dann folgen
drei Spalten mit Messwerten. Die Datei enthält maximal 500 Messreihen (sogenannte samples). Die erste Zeile
enthält eine Datenüberschrift. Die Überschriften können sich ändern, sind aber maximal 10 Zeichen lang.
Hier ein Auszug des Messdatenfiles:
  
> Zeit ; Drehmoment ; v_Soll ; x_Soll  
> 0 ; -45.1163 ; 10998 ; 386  
> 0.019999014 ; -45.1645 ; 10998 ; 386  
> 0.03000689 ; -45.1835 ; 10998 ; 386  
> 0.040001747 ; -44.9231 ; 10998 ; 386  
  
Ihre Aufgabe besteht darin die Daten einzulesen und formatiert auszugeben.
Alle Teilaufgaben können für sich gelöst werden!
  
__Ihre Aufgaben:__
* 1 Schreiben Sie ein Hauptprogramm mit folgenden Bestandteilen:
  
  * a. benötigte include Anweisungen, mit geeigneter Präprozessoranweisung ein Makro MAX_SAMPLES mit Wert 100 (define Anweisungen)
  * b. ein Zweidimensionales Feld zur Ablage der Messreihenüberschriften aus der ersten Zeile der Datei. Feld‐Dimension: 4 und je Überschrifttext 10 Zeichen.
  * c. Zweidimensionales Messwerte‐Feld vom Type float. Das Feld soll für MAX_SAMPLES und 4 Sensoren Platz bieten.
  * d. eine Variable datei für den Namen der Messdatei: "2016_WS_A4_Messdaten.csv"
  
* 2 Es soll für eine Funktion mit folgenden Prototypen ein Struktogramm erstellt werden:
  
```int ladeMessdatei(char ueber[4][11], float mw [MAX_SAMPLES] [4], char dat[30]);```
  
In der Funktion wird zuerst die Datei mit dem Namen mf im Lesemodus geöffnet. Mittels fscanf und
eines passenden Formatstrings sollen die Überschriften eingelesen werden. Mittels fscanf und eines
weiteren passenden Formatstrings sollen dann in einer Schleife die Messwerte solange eingelesen
werden, bis entweder MAX_SAMPLES oder EOF erreicht wurde. Die Funktion soll die Anzahl der
eingelesenen Messreihen zurückgeben oder -1, falls die Datei nicht geöffnet werden konnte.
  
* 3 Erstellen Sie für die Funktion ladeMessdatei gemäß der Beschreibung im Aufgabenteil 2 eine C‐Funktion!
  
 * 4 Schreiben Sie die Funktion messwerteAusgeben mit folgendem Prototypen:
  
```void messwerteAusgeben(char ueber[4][11], float mw [MAX_SAMPLES][4], int anzMesswerte);```
  
Die Funktion soll zuerst die Anzahl eingelesener Messwerte, dann den Text der Überschriften und dann alle Messreihen inklusive der Messreihennummer an der Konsole in 5 Spalten untereinander ausgeben, wobei die Spalten durch Tabulator getrennt und rechtsbündig mit drei Nachkommastellen formatiert sein müssen (siehe Beispielausgabe unten).
  
* 5 Erweitern Sie Ihr Hauptprogramm:
  * a. Rufen Sie die Funktion ladeMessdatei auf.
  * b. Falls diese Funktion einen oder mehr Messwerte aus der Datei einlesen konnte, starten Sie die
        Funktion ```messwerteAusgeben```, um die eingelesenen Daten an der Konsole sehen zu können.
  
  Beispiel der Ausgabe:

![Formatierte Ausgabe](https://user-images.githubusercontent.com/79829648/132944130-d2c0b713-0f89-42bf-90bc-5ee74629f896.png)

  </details>
