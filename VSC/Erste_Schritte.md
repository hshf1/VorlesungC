# Erste Schritte

Nun testen wir unsere Installation und machen uns dabei schon ein wenig mit VSCode vertraut. Wir werden einen neuen Ordner anlegen, eine neue Datei erstellen, ein Programm schreiben und dieses abarbeiten und debuggen.

Damit wir uns überhaupt zurechtfinden schauen wir uns aber erstmal an, was uns VSCode in der Grundansicht alles bietet:
  
  ![VSCodeUserInterface](https://user-images.githubusercontent.com/81232074/139573863-45d9073b-3110-40dc-8c92-5878025da812.png)

In der Activity Bar können wir auswählen, was uns in der Side Bar angezeigt wird. Standardmäßig ist ganz oben 
  der Explorer, in dem wir unsere Dateien auswählen können, darunter 
  die Suche, die ziemlich selbsterklärend sein sollte, dann
  die Source Control, die sehr cool aber nicht klausurrelevant ist, anschließend
  der Debugger, der später in diesem Dokument noch näher erläutert wird und schließlich
  der Marketplace für "Extensions", mit denen sich VSCode erweitern und anpassen lässt. 
  
In den Editor Groups kann man seinen Code bearbeiten. Im Beispiel sind zwei zu sehen, was praktisch sein kann, wenn man z. B. herausbekommen möchte, warum die Schleife im letzten Programm ging und im aktuellen nicht.
  
Im Panel kann man sich das Terminal, bestehende Probleme, den output oder die Debug Console anzeigen lassen. Wichtig ist hier, dass C-Programme ins Terminal ausgeben und _nicht_ in den Output, was man vielleicht zunächst erwarten würde.
  
Die Status Bar tut das was der Name schon sagt. Besonders relevant ist für uns die Stelle wo im Beispiel UTF-8 steht. Wenn man das verstellt, kann es zu merkwürdigem Verhalten bei der Darstellung mancher Zeichen kommen, wie ä, ü, ß, ...  Was da bei wem stehen muss, erfahren wir gleich.

### .vsode und settings.json
  
Im "obersten" Ordner befindet sich hoffentlich ein Ordner namens .vscode, in dem sich wiederum eine Datei namens settings.json befindet.
  
Diese Datei gibt vscode Hinweise, wie es sich bitte verhalten soll, z. B. ob es nicht vielleicht ab und an mal alle Dateien speichern soll. 
Aus meiner Sicht vernünftige Grundeinstellungen habe ich da schon mal vorbereitet. Je nach Betriebssystem sollte man noch das sogenannte "encoding" voreinstellen. Dazu entfernt man die beiden Schrägstriche (//) am Beginn der Zeile. utfbom für MacOS und cp437 für Windows.
  
  
### Ordner anlegen

Das Anlegen eines neuen Ordner ist denkbar einfach, jedoch gibt es ein paar Kleinigkeiten zu beachten, die sonste große Kopfschmerzen bereiten können.

Die wichtigste ist es Sonder- und Leerzeichen, Umlaute und andere nicht-ASCII-Zeichen unbedingt zu vermeiden. Spätestens wenn das eigene Programm inklusive Unterordner auf einem Produktionsserver ohne grafische Benutzeroberfläche landet führt das zu allerlei Schwierigkeiten. Wahrscheinlich geht es einem aber schon auf dem eigenen Rechner gehörig auf die Nerven.

Wie fast immer in VSCode führen viele Wege ans Ziel und es ist Geschmackssache, welchen man wählt.

Im folgenden Screenshot sind mal drei Möglichkeiten markiert (eine mit vorherigem Rechtsklick):

![image](https://user-images.githubusercontent.com/81232074/132040960-43f63a87-b822-47b2-806e-7571c6a6661e.png)


- [x] Ordner angelegt
- [ ] Datei angelegt
- [ ] Programm geschrieben und gespeichert
- [ ] Programm abgearbeitet
- [ ] Programm debugt


### Datei erstellen

Die Datei erstellt man genau wie den Ordner, blos halt logischerweise mit dem Datei-Icon bzw. new file statt new folder.

Damit VSCode weiß, wie es mit einer Datei umzugehen hat, muss sie von uns mit der richtigen Endung versehen werden. Wir legen zum Ausprobieren zwei neue Dateien an:

> beispielProgramm.c   // Eine Datei mit C-Code
  und
> raumFuerNotizen.txt  // Eine Text-Datei
 
Ein erster Eintrag in raumFuerNotizen.txt könnte z. B. sein:

> *Der Zugang zu Computern und allem, was einem zeigen kann, wie diese Welt funktioniert, sollte unbegrenzt und vollständig sein.
> *Alle Informationen müssen frei sein.

Damit haben wir eine .txt Datei, die offensichtlich Text enthält. Diese wird keine Syntax-Highlighting enthalten und lässt sich auch nicht komplieren, abarbeiten, ausführen oder was auch immer.
  
Mit der Datei beispielProgramm.c befassen wir uns im nächsten Abschnitt.

- [x] Ordner angelegt
- [x] Datei angelegt
- [ ] Programm geschrieben und gespeichert
- [ ] Programm abgearbeitet
- [ ] Programm debugt


### Programm schreiben und speichern

Wir begeben uns in unsere neu angelegte Datei beispielProgramm.c

und fügen folgenden Text ein:

> 
>
> 
>
> 
>     
>     
>     /*Ein Programm ohne höheres Ziel. Wir wollen nur VSCode kennenlernen und den Debugger ausprobieren*/
>     
>     #include <stdio.h>
>     
>     int main(){
>       int iSchub = 1000;      //wir legen eine Variable Namens iSchub an und weisen ihr den Wert 1000 zu
>       printf("Three!\n");     //Beginn eines kurzen Countdowns
>       iSchub = 2000;          //vorm Abarbeiten dieser Zeile hat iSchub weiter den Wert 1000
>       printf("Two!\n");       //jetzt ist der Wert 2000
>       iSchub = 3000;          //Two! steht irgendwo auf dem Bildschirm
>       printf("One!\n");
>       iSchub = 4000;
>       printf("Lift off!\n");
> 
>     return 0;
>     }

Eine durchaus sinnvolle Einstellung ist die Autosave-Funktion, die regelmäßig die aktuelle Datei speichert.
  
Bei einem Blick an den oberen Bildschirmrand sehen wir neben dem Namen unserer Datei entweder ein weißes Kreuz oder einen weißen (bei Standardfarbeinstellungen) Kreis. Der Kreis bedeutet, dass es nicht gespeicherte Änderungen gibt.

Durch das Betätigen von 
  [strg] + [s] (Windows)
    bzw. 
  [command] + [s] (MacOS)
speichern wir unsere Arbeit und sehen, dass sich der Kreis in ein X verwandelt.


  
- [x] Ordner angelegt
- [x] Datei angelegt
- [x] Programm geschrieben und gespeichert
- [ ] Programm abgearbeitet
- [ ] Programm debugt


### Programm abarbeiten

Das ist der Zeitpunkt, an dem wir die Früchte unserer harten Arbeit ernten. Wir arbeiten unser neues Programm ab. Wie das geht haben wir schon bei der Installation gelernt.

Dies ist der erwartete Output:

> Three!
> 
> Two!
>
> One!
>
> Lift off!
>

Mit allem was davor steht brauchen wir uns nicht aufzuhalten.

<details>
  
<summary>Aber ich *muss* wissen, was da passiert!</summary>  
Kein Problem, so kompliziert ist das gar nicht.

VSCode lässt uns einfach nur wissen, was es getan hat.

So sieht der Output bei mir aus:

> cd "/Users/username/vscodeforc/Projekte/ProgrammierspracheC/" && gcc helloWorld.c -o helloWorld && "/Users/username/vscodeforc/Projekte/ProgrammierspracheC/"helloWorld

Auf Windows wird das im Zweifelsfall mit c: losgehen und die / sind \, aber das Prinzip ist das gleiche.

Hätten wir genau das in die Kommandozeile getippt und auf Enter gedrückt, hätten wir auch unser Programm abgearbeitet, nur mit viel Tipperei vorweg.


`<&&>`kann man einfach als "danach tu noch:" lesen.

Wir haben da also

> cd "/Users/username/vscodeforc/Projekte/ProgrammierspracheC/"

danach tu noch:

> gcc helloWorld.c -o helloWorld

danach tu noch:

> "/Users/username/vscodeforc/Projekte/ProgrammierspracheC/"helloWorld

Der erste der drei Befehle ist cd "Pfadname", wobei cd für change directory, also "wechlse Verzeichnis" steht. 

gcc ist der Befehl mit dem wir unseren "C-Umwandler" bitten, sich an die Arbeit zu machen und aus unserem Quellcode in beispielProgramm.c eine ausführbare Datei zu machen. -o ist kurz für Output und signalisiert dem "C-Umwandler", dass die ausführbare Datei "beispielProgramm" heißen soll. Unter Windows wäre das "beispielProgramm.exe"

Die letze Zeile ruft dann einfach unsere gerade kreierte ausführbare Datei auf, was dazu führt, dass wir deren Output auf den Monitor bekommen.

</details>

- [x] Ordner angelegt
- [x] Datei angelegt
- [x] Programm geschrieben und gespeichert
- [x] Programm abgearbeitet
- [ ] Programm debugt


### Programm debuggen

Das Folgende ist eher ein Funktionstest oder ein erstes Kennenlernen des Debuggers, kein kompletter Vorgehensvorschlag oder Best Practice zum Debuggen! Einen Link zu einer etwas tiefergehenden Einführung zur Arbeit mit dem Debugger findet ihr am Ende dieser Sektion!  
  
Zum Debugger gelangen wir z.B., indem wir links auf das Symbol mit Play-Button und Käfer ([Bug](https://de.wikipedia.org/wiki/Programmfehler)) klicken.
Indem wir links neben die Zeilennummern klicken, können wir sogenannte Breakpoints einfügen, die sich durch rote Punkte zu erkennen geben, und wollen dies auch großzügig wie im gezeigten Screenshot tun, danach starten wir den Debugger durch Klick auch den grünen Play-Button:

![image](https://user-images.githubusercontent.com/78163337/111460491-5207a980-871c-11eb-85d0-c31a90780bdc.png)

Eine ausführlichere Einführung in den Debugger gibt es hier:
  
  https://github.com/hshf1/vscodeforc/blob/main/debugging.md
  
  
- [x] Ordner angelegt
- [x] Datei angelegt
- [x] Programm geschrieben und gespeichert
- [x] Programm abgearbeitet
- [x] Programm debugt
