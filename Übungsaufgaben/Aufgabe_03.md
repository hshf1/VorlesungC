<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/02_übungsaufgaben"><img src="https://img.shields.io/badge/Übungsaufgaben-Q%26A-informational?logo=c" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/8"><img src="https://img.shields.io/badge/Aufgabe_bewerten-red?logo=c" height="25"/></a>
<a href="https://moodle.hs-hannover.de/course/view.php?id=20976"><img src="https://img.shields.io/badge/Quizfragen-orange?logo=c" height="25"/></a>

# Aufgabe 3

Das Programm soll den Zinsertrag Ihres Kapitals und das resultierende Gesamtkapital ja nach Dauer der Anlage berechnen. Dazu sind nach der Ausgabe der Aufgabenstellung das Kapital, der Zinssatz und die Dauer der Anlage in Jahren einzugeben. Die Ausgabe soll mit zwei Stellen nach dem Komma erfolgen.

<details>
<summary>Tipp - berechnen</summary>
  
Das Kapital lässt sich am einfachsten mit einer Potenzfunktion berechnen. Diese befindet sich in der ```math.h``` Bibliothek. Mit der Funktion ```pow(a,b)``` wird der Wert für a^b berechnet. Eine weitere Möglichkeit wäre die Programmierung einer Schleife, die Ihnen jährlich das neue Kapital mit dem Zinssatz ausrechnet.
  
</details>

<details>
  <summary>Tipp - formatieren</summary>
  
Zum Formatieren von Kommazahlen existiert ein Tipp in Aufgabe 2: https://github.com/hshf1/cprog/blob/main/Aufgabe_02.md
  
  </details>
  
<ins><b>So kann die Ausgabe dann aussehen</b></ins>
<br />

![bsp_ausgabe](https://user-images.githubusercontent.com/100713757/192163687-70363bde-9dce-4338-97ad-1e9d1ab08b2b.gif)

# Level 2 ~ Freiwillig
<details>
<summary>Klicken zum Öffnen</summary>
  
Erweitern Sie das Programm so, dass immer nach 2 Jahren der Zinssatz sich um 1% verringert. (Jedoch nicht unter 0 fällt)


</details>
