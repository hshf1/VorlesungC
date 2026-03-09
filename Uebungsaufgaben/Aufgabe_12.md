<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/17"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>

# Aufgabe 12

## Teil 1

In einem Lager eines Automobilherstellers werden Fahrzeuge zwischengelagert.
Ein Lagerplatz wird beschrieben durch eine Struktur ```PLATZ_T```, die folgende Komponenten enthält:

- nr:  Seriennummer des KFZ, positive ganze achtstellige Zahl
- x:   x-Koordinate des Platzes, positive ganze Zahl zwischen 1 und 10
- y:   y-Koordinate des Platzes, positive ganze Zahl zwischen 1 und 10
- typ: ist wiederum eine Struktur vom Datentyp ```TYP_T```. In dieser Struktur ist:
  - Fahrzeug: Als Zeichenkette char* mit Fahrzeugtyp ("Kombi","Limousine","Cabrio")
  - KW:       Die Motorstärke als KW-Ganzzahl hinterlegt

Deklarieren Sie über ```typedef``` den Datentypen ```TYP_T```.<br>
Deklarieren Sie die Datenstruktur für ```PLATZ_T``` und definieren Sie ein Feld mit Namen ```lager``` mit 20 Einträgen von Typ ```PLATZ_T```.
Diese 20 Plätze sollen durch Änderung beliebig erweitert werden.
Initialisieren Sie in Ihrem Hauptprogramm die ersten 5 Einträge des Feldes ```lager``` mit beliebigen Werten (Fest oder Einlesen von der Tastatur).
Geben Sie in einer Schleife die Seriennummer und den Typ der ersten 5 Einträge am Bildschirm aus.


## Teil 2

Erstellen Sie nun ein Programm zur **dynamischen Lagerverwaltung**, mit dem Sie an beliebige Stellen Fahrzeuge einlagern und auslagern könne.
Gehen Sie hierzu folgendermaßen vor:

- Erstellen Sie ein neues _Hauptprogramm_. Initialisieren Sie alle Einträge Ihres Feldes ```lager``` mit folgenden _default_-Werten:
  -  nr = 0
  -  x und y = 0
  -  typ.Fahrzeug = "--"
  -  typ.KW = 0
  - (Mit diesen Werten werden freie Lagerplätze gekennzeichnet)
- Schreiben Sie eine Funktion ```ausgabe```, die den kompletten Lagerbestand ausgibt mit Seriennummer, Position und Fahrzeugtyp.
- Schreiben Sie eine Funktion ```einlagern```, die an der ersten freien Stelle Ihres Feldes ```lager``` die übergebenen Werte schreibt. Überprüfen Sie in Ihrer Funktion, ob der vorgegebene Lagerplatz frei oder bereits vergeben ist.
  - Erstellen Sie vor der Programmierung ein Struktogramm
- Schreiben Sie eine Funktion ```auslagern```, die ein Fahrzeug mit der angegebenen Seriennummer aus dem Feld entfernt, indem die Werte der Feldstruktur auf die ```default```-Werte zurückgesetzt werden.
- Schreiben Sie eine Funktion ```inventur```, die ermittelt, wie viele Fahrzeuge insgesamt und wie viele Kombis, Limousinen und Cabrios im Lager sind.

# Level 1.5 ~ Freiwillig
<details>
  <summary>Klicken zum öffnen</summary>
  WS 18 [4]
  
  Es soll ein Programm zur Realisierung eines Adressregisters, mit Daten von Privatpersonen, in
C entwickelt werden. In einem Registereintrag sind die folgenden Informationen über die entsprechende Privatperson enthalten:
Vorname, Nachname, Straße, Hausnummer, Postleitzahl, Ort. Diese Informationen sollen in der folgenden Struktur zusammengefasst werden:
  ```C
typedef struct
{  char vorname[20 + 1 ] ;
    char nachname[20 + 1 ] ;
    char strasse[20 + 1 ] ;
    short int hausnr ;
    long int plz ;
    char ort[20 + 1 ] ;
} person ;
  ```
Planen und Entwickeln sie ein Programm, welches folgendes leistet:
Das Adressregister soll als Array definiert werden, mit Platz für 100
Personeneinträgen. Das Array wird bereits mit drei Einträgen initialisiert. Im Hauptprogramm sollen alle eingetragenen Adressregister ausgegeben werden.
  
  * a)Beginnen sie ein Programm zu schreiben, welches die folgenden Elemente enthält:
    - Benötigte ```#include```-Anweisung
    - Oben abgebildete Struktur und Typendefinition
  
  Planen und schreiben sie jetzt eine main-Funktion, in der ein Array mit dem Namen adrRegister mit Platz für 100
Personeneinträge, wobei die ersten drei Elemente des Arrays mit den folgenden Daten initialisiert werden:
  ![Bild_Inhalt](https://user-images.githubusercontent.com/79829648/132984288-2cb62a00-f554-47ea-89d1-f01fa11d048d.png)

  
Die main-Funktion soll alle eingetragenen Daten des Adressregisters untereinander ausgeben.
Das Adressregister ist hierfür zu durchlaufen bis der erste Leereintrag vorgefunden wird. Als Erkennungsmerkmal für einen
Leereintrag dienen eine negative Hausnr. und eine negative PLZ (Siehe Element 2 aus a.). Für jeden der Einträge
in dem Adressregister soll die folgende Ausgabe erzeugt werden:
![Bild_Ausgabe](https://user-images.githubusercontent.com/79829648/132984454-f4cf68ab-cf8e-4f83-a796-c519c9a1da55.png)


 
  * b) Erstellen sie ein Struktogramm für die main-Funktion gemäß oben genannter Programmbeschreibung.
  
  * c) Schreiben sie eine main-Funktion gemäß oben genannter Programmbeschreibung.
  
 </details>
 
 # Level 2 ~ Freiwillig
 <details>
  <summary> Klicken zum öffnen </summary>
  SS18 [4]
  
  Ein Ladegerät wird durch eine Struktur Ladegeraet beschrieben, die folgende Komponenten enthält:
  ![Bild4](https://user-images.githubusercontent.com/79829648/132984880-66732ead-9e86-44d0-8412-e7882fc5af98.png)

  
  Lösen Sie die folgenden Teilaufgaben:
  * a) Wählen Sie eine passende Datenstruktur und deklarieren Sie diese in C.
  
  * b) Die Länge des Feldes soll durch eine ```#define```‐Direktive definiert werden und den Namen ANZ haben.
  Binden sie die notwendigen Header‐Dateien ein.
  
  * c) Erstellen Sie eine Funktion ```einlesenLG(struct Ladegeraet lg[ANZ])```, um alle Elemente des
Feldes lg mit Werten zu belegen.
  
  * d)Alle Strukturvariablen (außer ```Imax```) aller 10 Geräte sollen in einer for‐Schleife über Tastatur eingelesen
werden. Geben Sie über printf Hinweise für das Eingeben an. Löschen Sie am Ende jeder Eingabe den
Tastaturpuffer.
  
    * ```Imax``` wird nach der folgenden Regel berechnet: für ein kurzschlussfestes Ladegerät wird der
theoretisch mögliche Kurzschlussstrom Ik = U0/Ri eingesetzt, sonst 80% von Ik   
    _Tipp_:  Die Länge des Feldes ist bereits im Makro ```ANZ``` gespeichert und muss nicht mitübergeben werden.
  
  * e) Schreiben Sie eine Funktion ```ausgabeLG(struct Ladegeraet lg[ANZ])``` zur Ausgabe am
Bildschirm. Die Strukturvariablen U0 und Ri sollen nicht ausgegeben werden. Die Gleitkommazahlen
sind mit 2 Stellen nach dem Komma auszugeben.
  
  * f) Schreiben Sie des Weiteren eine Funktion ```ausgabeIstKS(struct Ladegeraet lg[ANZ])```, die
im Array alle kurzschlussfesten Geräte zählt und diese als ```unsigned int``` zurückgibt.
  
  * g) Erstellen sie die ```main()``` Funktion und erstellen Sie in ihr ein Array mit dem Namen ```lg``` an, das ```ANZ```
Elemente dieser Struktur beinhaltet.
  
  * h) Rufen Sie in ```main()``` die Funktion ```einlesenLG``` und ```ausgabeLG auf```. Als letztes Rufen sie die
Funktion ```ausgabeIstKS``` auf und lassen Sie sich die Anzahl der Datensätze ausgeben, die
kurzschlussfähig sind.
  
  </details>
