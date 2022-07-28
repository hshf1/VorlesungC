<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Aufgaben-Q%26A-informational?logo=c" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions/categories/05_umfragen"><img src="https://img.shields.io/badge/Aufgabe_bewerten-informational?logo=c" height="25"/></a>

# Aufgabe 11

Ihr Programm soll analysieren, welche die ersten 5 Worte eines Satzes (max. 50 Zeichen inkl. Leerzeichen) sind.
Lösen Sie dazu die folgenden Teilaufgaben:

- Lesen Sie den Satz als Zeichenkette ein und legen Sie ihn in einer passenden Datenstruktur ab
- Legen Sie ein char*-Feld mit 5 Elementen mit dem Namen ````wortSpeicher```` an. Für jedes Feldelement reservieren Sie mit dem Befehl ```calloc``` Speicher für mindestens 20 Zeichen.
- Ermitteln Sie die ersten 5 Worte innerhalb der eingegebenen Zeichenkette und kopieren Sie jedes einzelne Wort in den Wortspeicher. 
  - Hinweis zur erlaubten Eingabe eines Satzes: Worte sind durch das Leerzeichen getrennt, der Satz endet immer mit einem "."
- Geben Sie jedes Wort des Wortspeichers auf dem Bildschirm aus, falls der Satz weniger als 5 Wörter hat.


## Info - calloc
<details>
  <summary>Klicken zum Öffnen</summary>
  
  calloc reserviert Speicherplatz in Ihrem Rechner, setzt den Speicherinhalt auf 0 und gibt einen Zeiger auf die erste Stelle des Speichers zurück. malloc reserviert Speicher und gibt einen Pointer auf die erste Stelle des Speichers zurück, ohne den Speicher vorher auf 0 zu setzten.
 Beispielaufruf: 
  
  int \*pZeiger; 
	pZeiger = (int\*) calloc(5,sizeof(int));
  
  Verwendung von calloc:
 - Calloc gibt einen "untypisierten" void-Zeiger zurück. Durch ein Typecasting [(int*),(float*),...] kann der in den von Ihnen gewünschten Zeiger umgewandelt werden.
 - In dem Funktionsaufruf werden die Anzahl der Elemente und die Größe angegeben
    - calloc(5,4) -> Es wird Speicher für fünf Werte mit je 5 Byte reserviert (also 20 Byte ingesamt) 
    - calloc(5, sizeof(int)) -> Gute Praxis ist es, die Datengröße des Typs so einzutragen. Datentyp *int* umfasst nicht auf allen Systemen 4 Byte. Wenn doch, dann entspricht dies dem Aufruf calloc(5,4) 
  
  https://www.tutorialspoint.com/c_standard_library/c_function_calloc.htm
  
  </details>

# Zusatz 
<details>
  <summary>Klicken zum Öffnen</summary>
    
Erstellen Sie für Ihre Lösung ein Struktogramm.

</details>

# Level 2 ~ Freiwillig

<details>
  <summary>Klicken zum Öffnen</summary>
  
  WS 15
  
Um einen String zu verschlüsseln, wird folgender Algorithmus verwendet:
  
* Der String wird in Gruppen von vier Zeichen aufgeteilt.
* In jeder Gruppe werden die Zeichen auf den Positionen eins und drei, und zwei und vier jeweils ausgetauscht.
* Bei drei Zeichen wird das Zeichen auf der Position zwei nicht berührt.
* Die letzte Gruppe, die weniger als drei Zeichen beinhaltet, wird nicht modifiziert.
  
Beispielweise wird die Zeichenkette „Hallo Welt!“ in folgende 4er-Gruppen aufgeteilt:
  {H, a, l, l}, {o, , W, e}, {l, t, !}.
  
Durch den Austausch werden folgenden 4er-Gruppen gebildet.
  {l, l, H, a}, {W, e, o, }, {!, t, l}
  
Diese 4er-Gruppen werden als verschlüsselter String zusammengefasst:
  „llHaWeo !tl“
  
Bearbeiten Sie die folgenden Teilaufgaben. Bitte beachten Sie dabei, dass alle Aufgabenteile
unabhängig voneinander gelöst werden können! 
  
  a) Erstellen Sie ein Struktogramm, das den oben erläuterten Algorithmus beschreibt.
  
  b) Programmieren Sie eine Funktion void verschluessele_string (char str[]), die den oben geschilderten Algorithmus realisiert.
  
  c) In der Hauptfunktion implementieren Sie folgende Schritte:
  
* Lesen Sie einen String von der Tastatur ein
* Geben Sie den String zur Kontrolle auf dem Bildschirm aus
* Verschlüsseln Sie den angegebenen String basierend auf der Funktion verschluessele_string ()
* Geben Sie den resultierenden verschlüsselten String zur Kontrolle auf dem Bildschirm aus

</details>
