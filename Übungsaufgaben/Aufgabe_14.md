<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/19"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>
<a href="https://moodle.hs-hannover.de/course/view.php?id=20976"><img src="https://img.shields.io/badge/Quizfragen-orange?logo=c" height="25"/></a>

# Aufgabe 14 - Einfach verkettete Listen

Internetkommunikation erfolgt über zentrale Router als Punkt zu Punkt Verbindung. Sendet ein User eine Anfrage an eine Webseite, wird das TCP/IP Telegramm von seinem Rechner an seinen Provider gesendet, der sendet es weiter an einen Internetknoten und der sendet es weiter an den nächsten Knoten, bis es an den Hoster der Webseite zugestellt wird. Der Weg von der Quelle bis zum Ziel ist nicht immer derselbe, sondern wird dynamisch bestimmt.


## Teil 1

Diese Kommunikation soll in einer verketteten Liste nachvollzogen werden:

- Erstellen Sie mit ```typedef``` einen neuen Datentyp ```IPHub```, der die Struktur ```struct IPHub_s``` abbildet.
- Erstellen Sie nun die Struktur ```struct IPHub_s``` mit dem Inhalt:
    - int KnotenNr
    - int Kollision
    - IPHub NextHub
- Erstellen Sie in der Main ein Array ```Routing``` vom Datentyp ```IPHup```, welches 6 Felder aufweist. Der 0-te Index ist der Quellhub und der 6. Index ist der Zielhub. Initialisieren Sie das Feld. Denken Sie sich eigene _KnotenNr_ aus. Die Variable Kollision ist zuerst immer 0. Initialisieren Sie eine mögliche Route über alle Hubs von der Quelle bis zum Ziel (d.h. verbinden Sie die Strukturelemente ```NextHub```).

- Erstellen Sie eine Unterfunktion ```void RouteAusgeben(IPHub *Start)``` um die Route der Pakete auszugeben. Übergeben Sie der Unterfunktion die Adresse der Quelle. Geben Sie die ```KnotenNr``` und Kollisionen aus, solange bis das Ziel erreicht wurde (NextHub==NULL)

- Erstellen Sie eine Unterfunktion ```void SetzeKollision(IPHub *Start)```. Geben Sie die Knotennummer über die Tastatur ein, bei der das Strukturelement ```Kollision``` auf 1 oder 0 gesetzt werden kann. Prüfen Sie, ob die ```KnotenNr``` existiert. Wenn diese existiert, dann setzen Sie das Strukturelement ```Kollision``` dieses und aller Folgeknoten auf 1 oder 0 (gemäß Eingabe). Geben Sie die Route neu aus.

## Teil 2

Nutzen Sie nun anstatt des Arrays eine dynamische Routingverwaltung.

- Fragen Sie über die Tastatur ab, wie viele Knoten angelegt werden sollen.
- Legen Sie die Knoten über ```malloc```an und verknüpfen Sie diese mit einander.
- Geben Sie die Knoten nacheinander aus.
- Fragen Sie ab, welcher Knoten eine Kollision hat und setzen Sie das Bit Kollision in allen Folgeknoten auf 1 oder 0.

## Unterschied Array und malloc
<details>
    <summary>klicken zum Öffnen</summary>   

## Verkettete Liste im Array
![Verkettete Liste Array](https://user-images.githubusercontent.com/79829648/129008005-7d9453a9-bbb6-4264-a29e-406273545332.png)

## Verkettete Liste mit malloc   
![Verkettete Liste malloc](https://user-images.githubusercontent.com/79829648/129008068-352088d7-16e5-4d4e-a9da-85d00f0be5a4.png)

  </details>

# Level 2 ~ Freiwillig
<details>
   <summary> Klicken zum öffnen </summary>
    
SS 21 [4]  
    
Bei mehreren Treffen zwischen jeweils zwei Kommilitonen bricht das Coronavirus aus.
Ein Programm soll erstellt werden, welches die Infektionsketten über eine verkettete Liste nachvollzieht und die Matrikelnummern der infizierten Studierenden feststellt.
    
 a) Erstellen Sie eine Struktur PERSONmit entsprechenden Datentypen, welche folgende Informationen abspeichern kann:
  * Matrikelnummer 
  * Eine Wahrheitsvariable, die angibt, ob die Person infiziert ist
  * Einen Zeiger auf eine andere Person, mit der er sich trifft
    
 Programmieren Sie den ersten Teil der main-Methode. Definieren Sie ein Feld von 5 Personen und initialisieren Sie jeweils die ersten
 zwei Strukturelementemit beliebigen Werten. Das dritte Strukturelement, d.h. der Zeiger auf eine Stukturvariable soll so initialisiert werden,
 dass eine beispielhafte Reihenfolge der Treffen implementiert werden kann.
 Person 0 trifft sich mit Person 4, Person 4 mit Person 1, Person 1 mit Person 3, Person 3 mit Person 2. Person 2 trifft sich danach mit niemandemmehr.
 Das Feld soll lokal in der main-Methode erstellt werden.
     
    
b) Schreiben Sie eine Funktion infection_chain, welche einen Zeiger auf die Startperson übergeben bekommt. Zunächst trifft sich diese Startperson mit Ihrem Kontakt, danach dieser Kontakt mit seinem Kontakt usw. (entsprechend der gesetzten Zeiger in der jeweiligen Stukturvariablen). Nutzen Sie dafür eine while Schleife. In jedem Durchlauf ist zu prüfen, ob die momentane Person oder ihr Kontakt infiziert sind. Falls das der Fall ist, sind anschließend beide infiziert. Auf diese Weise infizieren sich alle Personen, die sich in der Kette nach der ersten infizierten Person getroffen haben.
    
    
c) Schreiben Sie eine Funktion nr_infections, welche das Feld als Parameter übergeben bekommt. Die Funktion soll dann für eine beliebige Initialisierung des Feldes die Anzahl der Infizierten aus dem Feld ermitteln und zurückgeben.
    
    
d) Schreiben Sie eine Funktion get_list, welche das Feld und die Anzahl der Infizierten als Parameter übergeben bekommt. Auch hier gehen Sie davon aus, dass das Feld beliebig initialisiert ist. Die Funktion ermittelt die Matrikelnummern der Infizierten und speichert diese in ein Feld von Ganzzahlen, dessen Zeiger sie zurückgibt. Das Ganzzahlfeld soll nur die notwendige Größe haben, d.h. es muss in der Funktion dynamisch erzeugt werden. 
    
    
e) Schreiben Sie eine Funktion output_list, welche das Ganzzahlfeld und die Anzahl der Infizierten als Parameter übergeben bekommt. Es gibt die Matrikelnummern der Infizierten zeilenweise auf dem Bildschirm aus. 

    
f) Hier soll die  main-Methode weitergeführt werden. Es sollen nach Erstellung des Feldes zunächst die Funktion infection_chain aufgerufen werden (siehe b), wobei als Startperson das erste Element des Feldes gewählt werden soll. Danach wird die Anzahl der Infizierten ermittelt (siehe c). Ist diese grösser null, wird die Liste der Infizierten erstellt (siehe d) und ausgegeben (siehe e). 
    
 </details>
