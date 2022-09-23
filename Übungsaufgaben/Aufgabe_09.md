<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/14"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>
<a href="https://moodle.hs-hannover.de/course/view.php?id=20976"><img src="https://img.shields.io/badge/Quizfragen-orange?logo=c" height="25"/></a>

# Aufgabe 9

Erstellen und testen Sie ein Programm, das für eine beliebige Ganzzahl die nächsthöhere gerade Zahl ausgibt. Falls die Zahl bereits gerade ist, ist die Zahl selbst auszugeben. 
Die Zahl ist durch den Benutzer einzugeben.

## Teil 1
  
  Erstellen Sie hierzu folgende Unterprogramme
  
  >void eingeben (int*)
  >
_Erhält einen Zeiger auf eine Zahl und ermöglicht die Eingabe dieser Zahl durch die Tastatur._

>void korrigieren (int*)
>
_Erhält einen Zeiger auf die vorher eingegeben Zahl und korrigiert diese, falls sie ungerade ist._

>void ausgeben (int*)
>
_Erhält einen Zeiger auf die vorher eingegebene und korrigierte Zahl und gibt diese mit Wert und Adresse am Bildschirm aus._

Testen Sie Ihr Programm mit unterschiedlichen Testfällen.

## Tipp - scanf()
<details>
  <summary>Klicken zum Öffnen</summary>
  
  ```scanf``` liest von der Tastatur ein und vergleicht mit der angegebenen Formatanweisung.
  Bei dem bereits bekannten verfahren weisen Sie mit dem "&" dem eingelesenen Werte eine Adresse zu, in welche diese gespeichert werden soll.
  ```C
  int a=0;
  scanf("%d",&a);
  ````
  
  Wenn mit Pointern gearbeitet wird, wird bereits eine Adresse übergeben und das "&" wird weggelassen.
  ``` C
  void einlesen(*ptr)
  {
    printf("Bitte geben Sie eine Zahl ein:\n");
    scanf("%f",ptr);
  }
  ```
  
  </details>

## Beispiel Pointer
<details>
<summary>Klicken zum Öffnen</summary>
  
  

  In dem folgenden Beispiel wird ein Pointer an ein Unterprogramm übergeben und in diesem Unterprogramm wird der eingelese Wert direkt an die in der main deklarierten Variable gespeichert.
  ![Screenshot (41)](https://user-images.githubusercontent.com/79829648/121770494-e477e780-cb69-11eb-82ef-566f3bb7d404.png)

An der Ausgabe kann das nachvefolgt werden.
  
  ## Ausführlich
  <details>
<summary>Klicken zum Öffnen</summary>
  Sie werden einen Programmcode sehen, welcher ähnlich dem zu dieser Aufgabe ist.
  Der Code, den Sie auf den Bildern sehen, bearbeitet die folgenden Punkte:
  
  - [ ] Buchstabe einlesen
  - [ ] Buchstabe verändern
  - [ ] Buchstabe ausgeben

Im ersten Punkt mit "Buchstabe einlesen", ist noch eine Fehlerabfrage eingebaut, welche vom Verständnis etwas schwierigerer ist. In den Kommentaren steht dazu aber genug.

# Main
![Screenshot (31)](https://user-images.githubusercontent.com/79829648/117532858-e9d19780-afe9-11eb-8998-6357607d014e.png)

# Buchstaben einlesen
![Screenshot (49)](https://user-images.githubusercontent.com/79829648/123069864-8376cc00-d413-11eb-8e05-0ca7d66f4684.png)


# Buchstaben verändern
![Screenshot (33)](https://user-images.githubusercontent.com/79829648/117532872-f7871d00-afe9-11eb-9e77-71b95c358ac3.png)

# Buchstaben ausgeben
![Screenshot (34)](https://user-images.githubusercontent.com/79829648/117532875-fa820d80-afe9-11eb-85b4-f26a4f26048d.png)


  
  </details>
  </details>

## Zusatz
<details>
<summary>Klicken zum Öffnen</summary>
  
  Erstellen Sie das Struktogramm für Ihr Hauptprogramm und für die Unterfunktionen
  </details>

  
  ## Teil 2

  
  Erweitern Sie Ihr Programm um eine weitere Funktion, die überprüft, ob die eingegebene Zahl mindestens 5-stellig ist und diese bei Bedarf korrigiert.
  
  ```korrigieren2``` soll nach der Funktion aus Teil 1 aufgerufen werden. Füllen Sie dazu die fehlenden Stellen **rechts** neben der Zahl mit 0 auf, bis 5 Stellen erreicht sind.
  
   > void korrigieren2( int* )
   > 
  _Erhält einen Zeiger auf eine vorher eingegebene Zahl und erweitert diese bei Bedarf auf 5 Stellen. Wandeln Sie die Zahl in einen Text (sprintf()) Ermitteln Sie mit strlen() die    Anzahl der Stellen. Erweitern Sie mit strcat() den Text und wanden den String wieder in eine Zahl zurück (Je Zeichen über ASCII Tabelle oder per sscanf() )_

Ändern Sie die Eingaberoutine so ab, dass der Anwender darauf hingewiesen wird, dass er keine 0 eingeben darf.
Erstellen Sie das Struktogramm für die Funktion korrigieren2.
Testen Sie Ihre neue Funktion mit unterschiedlichen Testfällen (z.B. -10001, -9999,-1,1,9999,10001)

  ## Teil 3
  
Erstellen Sie eine Schleife, die die Eingabe, Ausgabe und die Korrekturen solange wiederholt, bis die Zahl 0 eingegeben wird. Weisen Sie den Anwender auf dieses Abbruchkriterium hin. Das Programm wird nach Eingabe dieser Zahl beendet.
Erstellen Sie das Struktogramm Ihres so modifizierten Programms.


  
  # Level 2 ~ Freiwillig
  <details>
<summary>Klicken zum Öffnen</summary>
  SS 14
  
 Die imaginäre Suchmaschine ```www.einfachsuche.net``` bekommt bei der Suche nach dem Suchbegriff "Hochschule Hannover" folgenden HTTP-Request:
  
  http://www.einfachsuche.net/?search=Hochschule+Hannover
  
Erstellen Sie ein Programm, welches die Umwandlung eines Suchbegriffs (in Form eines Strings) in den dazugehörigen HTTP-Request-String vornimmt. Dabei soll wie folgt vorgegangen werden:
  
a) Der gewünschte Suchbegriff wird mit der Tastatur angegeben und in einen Puffer gespeichert. Man
kann davon ausgehen, dass die einzelnen Worte des Suchbegriffs nur durch jeweils ein Leerzeichen
getrennt sind.
  (Sollte der eingegebene Suchbegriff leer sein, ist ein Fehler auszugeben und das Programm zu beenden.)
  
b) Der angegebene Begriff wird durchsucht und alle Leerzeichen werden durch das Zeichen ‘+‘ ersetzt.
  
c) Der Ergebnisstring ergibt sich durch Zusammensetzen des festen Strings
"http://www.einfachsuchen.net/?search=" mit dem in Schritt 1. und 2. modifizierten
Suchbegriff.
  
d) Der resultierende String wird auf der Konsole ausgegeben.
  </details>
