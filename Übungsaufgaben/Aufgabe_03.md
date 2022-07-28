<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Aufgaben-Q%26A-informational?logo=c" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a> <a href="https://github.com/hshf1/VorlesungC/discussions/categories/05_umfragen"><img src="https://img.shields.io/badge/Aufgabe_bewerten-informational?logo=c" height="25"/></a>

# Aufgabe 3

Das Programm soll den Zinsertrag Ihres Kapitals und das resultierende Gesamtkapital ja nach Dauer der Anlage berechnen.

Dazu sind nach der Ausgabe der Aufgabenstellung das Kapital, der Zinssatz und die Dauer der Anlage in Jahren einzugeben.
Die Ausgabe soll mit zwei Stellen nach dem Komma erfolgen.


## Tipp - Berechnen
<details>
<summary>Klicken zum Öffnen</summary>
Das Kapital lässt sich am einfachsten mit einer Potenzfunktion berechnen. Diese befindet sich in der ```math.h``` Bibliothek.
  Mit der Funktion ```pow(a,b)``` wird der Wert für a^b berechnet.
  
  Eine weitere Möglichkeit wäre die Programmierung einer Schleife, die Ihnen jährlich das neue Kapital mit dem Zinssatz ausrechnet.
</details>

## Tipp - Formatieren
<details>
  <summary>Klicken zum Öffnen</summary>
  Zum Formatieren von Kommazahlen existiert ein Tipp in Aufgabe 2:
  
  https://github.com/hshf1/cprog/blob/main/Aufgabe_02.md
  </details>

# Level 2 ~ Freiwillig
<details>
<summary>Klicken zum Öffnen</summary>
  
Erweitern Sie das Programm so, dass immer nach 2 Jahren der Zinssatz sich um 1% verringert. (Jedoch nicht unter 0 fällt)


</details>
