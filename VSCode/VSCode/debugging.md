Debugging


Um Fehler in einem Programm zu finden, ist es hilfreich das Programm während der Laufzeit debuggen, d.h. beobachten zu können. 

Man kann dem Programm quasi in Zeitlupe dabei zuschauen was passiert, wenn es abgearbeitet wird. Dies bedeutet jedoch, dass der Debugger erst zum Einsatz kommen kann, wenn man ein Programm geschrieben hat, das sich compilieren lässt. Genau wie bei einer Zeitlupe oder einem Standbild hilft der Debugger genau zu erkennen was passiert, aber man muss selber hinschauen, um die richtigen Schlüsse zu ziehen. Für diejenigen, die mit Fußball etwas anfangen können: der Debugger ist die Zeitlupe oder das Standbild zum Moment der Ballabgabe, die das regelkundige Auge erkennen lässt, ob eine Abseitsposition vorliegt. Er ist nicht die Torlinienüberwachung, die einem die Entscheidung anzeigt.

Das Debugging erfolgt daher immer nach folgendem Muster:

1. Überlegen, was in der jetzigen Zeile passieren soll, wenn sie ausgeführt wird
2. Ansehen der relevanten Variablen/Bildschirmausgabe VOR der Ausführung
3. Sich ÜBERLEGEN, wie die Variablen/Bildschrimausgabe NACH der Ausführung aussehen sollte
4. Zeile ausführen (Debuggingstep)
5. Prüfen, ob Vorstellung und Wirklichkeit übereinstimmen
6. Sollte das nicht der Fall sein, Fehler finden. (Entweder Vorstellung falsch, oder Programmcode falsch, oder beides)

Zunächst machen wir uns aber an einem Beispiel mit der generellen Funktionsweise des Debuggers vertraut.

Kopiert das folgende Programm und speichert es unter debugginguebung.c ab (kleiner Tipp, wenn ihr euren Mauszeiger über dem Programmcode schweben lasst, wird oben rechts neben dem Code ein Symbol eingeblendet, mit dem ihr den Inhalt in die Zwischenablage kopieren könnt):

```c
#include <stdio.h> 
int main ()
{
  int i;  // Laufvariable i
  
  
  i=0; 
  printf("Hallo!\n"); 
  i=i+1; 
  printf("Hallo 1!\n"); 
  i=i+1; 
  printf("Hallo 2!\n"); 
  i=i+1; 
  printf("Hallo 3!\n"); 
  return 0;
} 
```
Klickt einfach links neben die Zeilennummer 7 und es erscheint ein roter Punkt, Breakpoint genannt:

![Bildschirmfoto 2021-10-13 um 12 16 31](https://user-images.githubusercontent.com/81232074/137114565-5bcbf5a7-b129-4c5c-b970-dfc95ef393fd.png)

Alternativ könnt ihr an die gleiche Stelle auch rechtsklicken und so einen Breakpoint hinzufügen. Durch rechtsklick auf einen bestehenden Breakpoint könnt ihr ihn entfernen.

![breakpointrechtsklick](https://user-images.githubusercontent.com/81232074/137114867-905cc110-b14b-454e-bafc-4d1296dccbbf.png)

Den Debugger startet man mit klick auf das grüne "Play"-Symbol oben links, oder durch drücken von F5:
![startdebugging](https://user-images.githubusercontent.com/81232074/137124654-35256b0b-c20f-4b9f-b33d-34ec7b8c23f1.png)


Bitte betrachtet jetzt den folgenden Screenshot. Hier könnt ihr folgendes erkennen:
1. Das Programm steht in der Zeile 7. Die Zeile 7 wurde noch NICHT ausgeführt.
2. Die beobachtete Variable i ist noch nicht initialisiert und zeigt einen Wert von i=69669. Bei euch wird dieses mit an Sicherheit grenzender Wahrscheinlichkeit ein anderer Wert sein!
3. Das Ausgabefenster (Terminal) ist noch leer, da noch nichts über den Befehl printfausgegeben wurde. 
4. Am oberen Rand des Fensters seht ihr eine neue Schaltfläche für den Debugger.

![debuggingfirststep](https://user-images.githubusercontent.com/81232074/137118222-7c9f8f64-9d90-44f0-b4ca-2a841a9cbd50.png)


Im Debugger Fenster könnt ihr jetzt per klick auf das + rechts neben "WATCH" Variablen hinzufügen, die ihr beobachten möchtet. Hier bietet sich die Variable i an: 

![addexpression](https://user-images.githubusercontent.com/81232074/137119279-010a069c-b2f3-4a83-9312-fbc39030477b.png)

In der Debugging-Toolbar befindet sich ein Pfeil nach unten mit einem Punkt darunter. Diese Funktion hört in VSCode auf den schönen Namen "Step into", wird hier jedoch im folgenden "nächster Schritt genannt. .Sie lässt sich auch mit F11 aufrufen.

![debuggingtoolbar](https://user-images.githubusercontent.com/81232074/137120101-a40c0633-5adc-48a6-b332-2bb3e655c157.png)


Klickt nun bitte 3x auf die Schaltfläche „Nächster Schritt“. Status danach:
1. Das Abarbeitungszeichen zeigt auf die Zeile 10. 
2. Die "Debug Console" zeigt „@"Hallo!\r\n"
3. Die Variable i hat den Inhalt 1 (i: 1).

![debuggingline10](https://user-images.githubusercontent.com/81232074/137121570-edf50dcd-53b3-429a-aafc-a0302b12cf6f.png)

Wenn ihr über „Nächsten Schritt“ das Programm bis zur Zeile 15 (return 0;) weiter ausführt, habt ihr dieses Bild:

![debuggingcomplete](https://user-images.githubusercontent.com/81232074/137122349-4f5097f3-dd5e-44e4-86df-53cd08955eec.png)

Es wurden die vier "Hallos" ausgegeben und die Variable i trägt den Wert 3.

Manch einer mag sich gefragt haben, was es bringen soll die Variable i "doppelt" zu überwachen. Unter "WATCH" kann nicht nur Variablen anzeigen lassen, sondern ganze Ausdrücke. Mit "i, c" z. B. den zugehörigen Character oder mit "2\*i" den doppelten Wert von i. Wenn man z. B. 8\*M_PI als Abbruchbedingung für eine Schleife gewählt hat ist es sicherlich komfortabler i < 8\*3.14 zu überwachen, als das im Kopf auszurechnen.

![image](https://user-images.githubusercontent.com/81232074/137126018-be99777a-565b-4bcf-9d87-fdf386361bf3.png)


Zum weiteren üben bieten sich die folgenden Schritte an:

Erweitert das Programm um folgende Funktion:
1. Deklaration von y als float Variable
2. Berechnung y= 12 + 4 % 3 * 7 / 8
3. Debuggt das neue Programm.
4. Verändert die Berechnung so (Typenzuweisung der Konstanten), dass die Berechnung das richtige Ergebnis ausgibt (siehe Vorlesung).
5. Debuggt das neue Programm.
