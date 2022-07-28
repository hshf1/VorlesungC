<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Aufgaben-Q%26A-informational?logo=c" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions/categories/05_umfragen"><img src="https://img.shields.io/badge/Aufgabe_bewerten-informational?logo=c" height="25"/></a>

# Aufgabe 10
 
 Mit Ihrem Programm wird eine Zeichenkette von **maximal** 50 Zeichen eingelesen und in einer passenden Datenstruktur abgelegt.
 Die einzelnen Teilaufgaben können in Unterprogrammen umgesetzt werden.
 
 - Geben Sie die Zeichenkette wieder aus.
 - Ermitteln Sie die Anzahl der Zeichen innerhalb der Zeichenkette.
 - Geben Sie die Zeichenkette in umgekehrter Reihenfolge wieder aus.
 - Ermitteln Sie die Anzahl der Großbuchstaben und geben Sie die Anzahl aus.
 - Ermitteln Sie die Anzahl der Vokale in der Zeichenkette und geben Sie die Anzahl aus.
 - Geben Sie die Zeichenkette nur mit Konsonanten aus, Vokale sind ersatzlos gestrichen.
 - Geben Sie die Länge der so entstandenen Zeichenkette und die prozentuale Kompressionsrate aus.


## Zusatz
<details>
 <summary>Klicken zum Öffnen</summary>
 Erstellen Sie zu jeder Teilaufgabe ein Struktogramm
  
  </details>
  
  ## Sonderaufgabe
  <details>
 <summary>Klicken zum Öffnen</summary>
 Auch die Großbuchstaben Ä, Ö und Ü sollen gezählt werden.
 
 </details>
 

 ## Tipp - Zeichenkette einlesen
 <details>
 <summary>Klicken zum Öffnen</summary>
 Um eine Zeichenkette einzulesen, gibt es drei Varianten, die verwendet werden können:
 
- gets(zeichenkette)
- fgets(zeichenkette, zeichenanzahl, stdin)
  - stdin steht für die Tastatur mit fgets kann auch von anderen Quellen gelesen werden
- scanf("%<anzahl>s", zeichenkette)
  -  https://www.tutorialspoint.com/c_standard_library/c_function_scanf.htm
 
 </details>
 
 ## Tipp - Zeichnkette umdrehen
 <details>
 <summary>Klicken zum Öffnen</summary>
 
 - (for-)Schleifen können auch runter zählen
 - Ein Zwischenspeicher oder eine zweite Zeichenkette könnte hilfreich sein
 
 </details>
 
  ## Tipp - Vokale
 <details>
 <summary>Klicken zum Öffnen</summary>
 
 - Zeichen können auch in Zahlen umgewandelt werden. Dafür gibt es eine bestimmte Tabelle (ASCII)
 - Mittels einer oder mehrerer logische(n/r) Operation(en) können die gewünschten Kriterien kombiniert werden. Möglicherweise macht auch die CASE Anweisung Sinn. 
 
 

 </details>
</details>

 # Level 2
  <details>
 <summary>Klicken zum Öffnen</summary>
   WS 14
   
   Bei der Suche nach einer Fahrtverbindung hat der Reisende eine Zieladresse in Deutschland angegeben, die aus der Postleitzahl, dem Ort, der Straße und der Hausnummer besteht. Unglücklicherweise hat er die übliche Reihenfolge der Adressenangaben geändert, sodass z.B. nicht garantiert ist, dass die Hausnummer unmittelbar nach dem Straßennamen steht, oder dass die PLZ am Anfang der Zeichenkette zu finden ist.
Der Reisende kann z.B. statt der Zieladresse
   
 „30173 Hannover, Hildesheimer Straße 140.“
   
eine folgende Adresse eintippen:
   
 „140 Hannover 30173 Hildesheimer Straße.“
   
Schreiben Sie ein ablauffähiges C-Programm, das die Adresse analysiert und sowohl die Postleitzahl als  auch die Hausnummer in der angegebenen Adresse ermittelt.
   
a) Fordern Sie den Benutzer auf, eine Adresse einzugeben. Lesen Sie die Adresseeingabe von der
Tastatur ein und speichern Sie die Adresseingabe in einer passenden Datenstruktur.
Überprüfen Sie mit Ihrem Programm, ob die Zeichenkette nicht leer ist oder ob die Zeichenkette
nicht mit einem "." endet.
   
b) Zerlegen Sie die Adresse in die einzelnen Adressbestandteile. Gehen Sie davon aus, dass die Adressbestandsteile durch ein Leerzeichen getrennt sind und mit einem Punkt enden. Speichern
Sie die einzelnen Adressbestandteile in einer passenden Datenstruktur.
   
c) Analysieren Sie für jeden Adressbestandteil, ob es sich um die Postleitzahl oder die Hausnummer handelt. Finden Sie geeignete Kriterien für diese Analyse.
   
d) Falls Ihr Programm eine Postleitzahl oder eine Hausnummer identifizieren konnte, sollen diese
auf dem Bildschirm ausgegeben werden.
Geben Sie den vollständigen Quell-Code Ihres Programmes an.
   </details>
