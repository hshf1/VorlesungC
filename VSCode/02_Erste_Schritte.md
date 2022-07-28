<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/01_vscode"><img src="https://img.shields.io/badge/VSCode-Q%26A-informational?logo=visualstudiocode" height="25"/></a>

## Allgemeine Hinweise

Bei Problemen und Fehlern schaut hier: [03_Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md).

VSCode wird wahrscheinlich ein Update auf die Insiders-Version (Beta-Version) anbieten, wovon abgeraten wird.<br />
Ein stabiler Betrieb ist wichtiger als die neuesten Features, die beim C-Programmieren kaum zum Tragen kommen werden.

<img width="419" alt="image" src="https://user-images.githubusercontent.com/78163337/111457567-a446cb80-8718-11eb-9e1d-26213b51a86c.png">

Bei dieser Meldung also einfach auf `<Nicht mehr anzeigen>` klicken.

Immer dran denken, eure Programme zu speichern, bevor ihr diese ausführt. Sonst wird nur der letzte gespeicherte Zustand ausgeführt und nicht der aktuelle.

Ordnernamen und auch Dateinamen sollten weder Leerzeichen noch Umlaute enthalten! Solltet ihr eine Fehlermeldung kriegen, ist dies als erstes zu überprüfen und ggf. anzupassen. Neue Dateien, die ihr erstellt, müssen die Endung .c haben. So sagt ihr VSCode, dass ihr mit C programmieren wollt.

## Erste Schritte

<details> 
  <summary>Mit der Umgebung von VSCode vertraut machen</summary>

Damit wir uns überhaupt zurechtfinden, schauen wir uns aber erstmal an was uns VSCode in der Grundansicht alles bietet:
![VSCodeUserInterface](https://user-images.githubusercontent.com/81232074/139573863-45d9073b-3110-40dc-8c92-5878025da812.png)

In der Activity Bar können wir auswählen, was uns in der Side Bar angezeigt wird. Standardmäßig ist ganz oben 
der Explorer, in dem wir unsere Dateien auswählen können, darunter 
die Suche, die ziemlich selbsterklärend sein sollte, dann
die Source Control, die sehr cool aber nicht klausurrelevant ist, anschließend
der Debugger, der später in diesem Dokument noch näher erläutert wird und schließlich
der Marketplace für "Extensions", mit denen sich VSCode erweitern und anpassen lässt. 
  
In den Editor Groups kann man seinen Code bearbeiten. Im Beispiel sind zwei zu sehen, was praktisch sein kann, wenn man z. B. herausbekommen möchte, warum die Schleife im letzten Programm ging und im aktuellen nicht.
  
Im Panel kann man sich das Terminal, bestehende Probleme, den output oder die Debug Console anzeigen lassen. Wichtig ist hier, dass C-Programme ins Terminal ausgeben und _nicht_ in den Output, was man vielleicht zunächst erwarten würde.
  
Die Status Bar tut das was der Name schon sagt. Besonders relevant ist für uns die Stelle wo im Beispiel UTF-8 steht. Wenn man das verstellt, kann es zu merkwürdigem Verhalten bei der Darstellung mancher Zeichen kommen, wie ä, ü, ß, usw.
</details>

<details>
  <summary>Code starten und debuggen</summary>

### Schritt 1

In der Startansicht wählen wir `<„Open folder…“>`

Hier wählen wir irgendeinen Ordner, in der wir unsere Programme speichern wollen.
Höchstwahrscheinlich ist das ein leerer Ordner und wir erstellen nun unsere erste Datei darin. Denkt dran, dass weder Umlaute noch Leerzeichen im Ordner- oder Dateinamen enthalten sind.
  
![image](https://user-images.githubusercontent.com/100713757/160576258-b32cd335-9008-454a-8c44-84c15d4fe8b9.png)
  
Um eine neue Datei zu erstellen, gehen wir im VSCode Explorer neben dem Namen unseres Ordners und klicken auf das erste Button, dass Blatt mit einem plus und benennen unserer Datei, in meinem Fall z.B. helloworld.c. Wichtig ist, dass ihr die Endung .c habt, damit VSCode weiß, in welcher Sprache ihr programmieren wollt.

![images](https://user-images.githubusercontent.com/100713757/160576382-884093a7-e1b5-4cf1-a55e-46d3fc850a89.png)

### Schritt 2
  
Nun geben wir in unserer neu erstellten Datei folgenden Code ein, um den Code-Runner und den Debugger einmal zu prüfen. Nicht vergessen: Änderungen vor dem starten oder Debuggen des Programmes speichern!

  ```c
#include <stdio.h>

int main(){

int x = 0;
x++;

printf("Die Zahl lautet %d.\n", x);

}
```
  
</details>

## Live Share
  
Live Share ist eine optionale Erweiterung für euch. Ihr könnt damit zusammen mit anderen Studenten, die VSCode und diese Erweiterung installiert haben, zusammen programmieren. Eine Begrenzung der Anzahl gleichzeitiger Teilnehmer ist nicht bekannt und ihr könnt euch so gegenseitig auch bei schwierigen Aufgaben helfen und die Aufgabe aufteilen bzw. jeder seinen eigenen Losungsweg präsentieren. Auch wird euch euer Prof. damit bei der Vorlesung einladen, ihn beim coden direkt über VSCode mitzuverfolgen bzw. ihr könnt Vorschläge und Programmieransätze so direkt mit dem Prof. teilen.
  
<details>
  <summary>Live Share Anleitung</summary>
Zur Verwendung von Live Share muss die Erweiterung Live Share Extension Pack in VSCode installiert sein. Dieses sollte bei der Installation von VSCode mitinstalliert worden sein. Falls dies nicht der Fall ist, z.B. weil nach einer alten Anleitung installiert wurde, dann installiert ihr die Erweiterung, indem ihr Links auf die 3+1 Würfel drauf klickt und im Suchfenster Live Share Extension Pack eingebt.

![Erweiterung LiveShare](https://user-images.githubusercontent.com/100713757/160299351-5c54548a-d681-4181-b5f5-3c4b2e6700cb.png)
  
Dann müsst ihr nur die Erweiterung installieren und VSCode neustarten.
Nach dem Neustart sollte unten links im blauen Balken ein Button von LiveShare erscheinen.

![LiveShare Button](https://user-images.githubusercontent.com/100713757/160299453-9d938a4f-389c-49b5-b110-bfa4a1e433ac.png)

Dort klicken wir auf den Live Share Button und es öffnet sich oben ein Menü mit der Auswahl, wie man sich anmelden möchte. Es besteht die Möglichkeit, mit einem vorhandenen GitHub Account sich anzumelden oder mit einem Microsoft Konto. Einen Microsoft Konto habt ihr von der Hochschule bekommen, dieser kann auch hier verwendet werden.
  
![LiveShare Anmeldung](https://user-images.githubusercontent.com/100713757/160299585-7ebcbdd2-83c6-4ff6-a569-6239965a048b.png)
  
Nach der Anmeldung ist unten links im blauen Balken neben dem Live Share Button nun auch ein Button mit dem Namen eures Kontos, den ihr zur Anmeldung genutzt habt.
  
![LiveShare nach Anmeldung](https://user-images.githubusercontent.com/100713757/160299637-de41d750-f513-4321-bfa5-de56354c1e07.png)
  
Klicken wir nun auf unseren Namen, erscheint oben ein Menü. Da können wir auswählen, ob wir eine normale Collaboration Session starten wollen, wo jeder schreiben und lesen kann, eine read-only Collaboration Session starten wollen, wo jeder eingeladene nur lesen kann oder ob wir einer vorhandenen Collaboration Session mittels eines links beitreten wollen.
  
![Live Share Collaboration](https://user-images.githubusercontent.com/100713757/160299828-b53d5fb5-570c-460f-89c2-e0e95115dffd.png)
  
Wir können auch neben dem Namen auf den Live Share Button klicken. Der öffnet dann eine normale Collaboration Session und man bekommt rechts unten eine Auswahlmöglichkeit.
  
![LiveShare Button](https://user-images.githubusercontent.com/100713757/160299918-62a373dd-8545-44ac-ad63-c17ed769d1e3.png)

Man kann auch hier auswählen, ob man die normalle Session in eine read-only Session umwandeln möchte und man kann den Einladungslink nochmal kopieren. Diesen Link könnt ihr allen schicken, die beitreten sollen. Auch eingeladene Personen benötigen Live Share.
  
Wenn wir während der Session wieder unten links im blauen Balken auf unseren Namen klicken, so öffnet sich oben wieder ein Menü.
  
![LiveShare Exit](https://user-images.githubusercontent.com/100713757/160300082-1aeb9b75-39a1-4a64-a0c1-e61d8fa6da6e.png)
  
Dort können wir den Einladungslink wieder kopieren, einen Audio Call starten oder die Session beenden.
  
</details>
  
## Debuggen

<details>
<summary>Ausführliche Anleitung zum Debuggen</summary>
Das Folgende ist eher ein Funktionstest oder ein erstes Kennenlernen des Debuggers, kein kompletter Vorgehensvorschlag oder Best Practice zum Debuggen! Einen Link zu einer etwas tiefergehenden Einführung zur Arbeit mit dem Debugger findet ihr am Ende dieser Sektion!  
  
Zum Debugger gelangen wir z.B., indem wir links auf das Symbol mit Play-Button und Käfer ([Bug](https://de.wikipedia.org/wiki/Programmfehler)) klicken.
Indem wir links neben die Zeilennummern klicken, können wir sogenannte Breakpoints einfügen, die sich durch rote Punkte zu erkennen geben, und wollen dies auch großzügig wie im gezeigten Screenshot tun, danach starten wir den Debugger durch Klick auch den grünen Play-Button:

![image](https://user-images.githubusercontent.com/78163337/111460491-5207a980-871c-11eb-85d0-c31a90780bdc.png)

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

  
</details>
<!--- 
### Konfiguration von VSCode

Jetzt ist es endlich soweit und wir öffnen Visual Studio Code.
  
In der Startansicht wählen wir „Open folder…“

<img width="239" alt="image" src="https://user-images.githubusercontent.com/78163337/111457735-dce6a500-8718-11eb-8ad8-504a45538b74.png">

Und wählen unter Dokumente\VSCodeForC\ den Ordner Projekte
  
#### Es ist wichtig, dass es genau dieser Ordner ist!
  
  Erläuterung: VSCode sucht im obersten geöffneten Ordner, und nur dort, nach einem Ordner ".vscode". Wenn es fündig wird entnimmt es diesem Einstellungen die man sonst von Hand vornehmen müsste. Die habe ich vorbereitet und als ihr den "git"-Befehl ausgeführt habt, habt ihr die runtergeladen. Wenn ihr aus irgendeinem Grund beim Öffnen von VSCode oder später in VSCode einen Ordner öffnet und dort Programme speichern möchtet, muss in diesen Ordner eine Kopie des .vscode-Ordners. 

<img width="371" alt="image" src="https://user-images.githubusercontent.com/78163337/111457815-f7b91980-8718-11eb-8ec2-c96cdb9df8e1.png">

Wir finden im Ordner Programmiersprache_C fertig vorbereitet die Datei HelloWorld.C 

##### code-runner

Damit unsere Programme später Input vom Terminal entgegennehmen können, z. B. mit scanf, müssen wir noch eine Einstellung vornehmen.

Also begeben wir uns die die Settings, geben „code-runner.runinterminal“ in die Suche ein und setzen den entsprechenden Haken.

<img width="310" alt="image" src="https://user-images.githubusercontent.com/78163337/111459570-246e3080-871b-11eb-8050-d287916a961c.png">

![image](https://user-images.githubusercontent.com/78163337/111459615-351ea680-871b-11eb-9819-b7dce6bfdf37.png) 

#### Konfiguration des Debuggers

Für den Fall, dass es in etwas komplizierteren Programmen zu Beginn mal nicht ganz rund läuft, richten wir auch gleich noch den Debugger ein.
Ein Debugger ist ein Werkzeug, das bei der Fehlersuche behilflich ist. Man kann es sich vielleicht als MRT oder Röntgengerät mit eingebauter Zeitlupe vorstellen.

Unser erstes Beispielprogramm HelloWorld.c funktioniert einerseits gut und enthält andererseits keine Variablen und nur eine Zeile sinnvoll "untersuchbaren" Code, sodass es zum Ausprobieren des Debuggers ungeeignet ist.

Wir wählen links die Datei debugtest.c und klicken oben auf

> Terminal

und dann

> Configure Default Build Task

Auf meinem Rechner ist noch ein weiterer Compiler installiert, nicht irritieren lassen, wenn die Auswahl ein wenig anders aussieht.

![image](https://user-images.githubusercontent.com/78163337/112050085-bd081480-8b50-11eb-80df-a291eb903839.png)

In unserem Projekte Ordner legt uns VSCode nun automatisch eine Datei „tasks.json“ an. Diese gilt auch für alle Programme in diesem Ordner, wir müssen diesen Schritt also nur einmal ausführen. Sollte es im Folgenden Probleme geben, ist eine funktionierende Version dieser Datei im Anhang. Pfade, etc. können aber abweichen, daher dient diese eher dem Vergleich, als dem kompletten Ersetzen.

Wir schreiben nun unser zweites Programm „debugtest.c“, mit dem Inhalt aus dem Screenshot unten:

<img width="226" alt="image" src="https://user-images.githubusercontent.com/78163337/112050268-f2146700-8b50-11eb-8565-632c2626e7f5.png">

**_Jetzt ist es wichtig, dass tatsächlich auch debugtest.c geöffnet und markiert ist (Focus hat), und nicht tasks.json, da VSCode nun eine weitere Konfigurationsdatei erzeugen wird, und zwar basierend auf der aktiven Datei._**

Wir achten also darauf, dass wir unseren Code sehen können und klicken oben auf
> Run
und dann
> Start Debugging
und gehen dann wie auf den Screenshots markiert vor:

![image](https://user-images.githubusercontent.com/78163337/112050854-939bb880-8b51-11eb-82ba-055a312bffa0.png)

![image](https://user-images.githubusercontent.com/78163337/112050881-97c7d600-8b51-11eb-869a-f05a0b726c1c.png)

Das Programm ist kurz und unspektakulär, aber ein echter Klassiker.

Wir rechtsklicken in das Fenster mit unserem Code und wählen „Run Code“

<img width="385" alt="image" src="https://user-images.githubusercontent.com/78163337/111458152-626a5500-8719-11eb-87fc-40ae6b391886.png">

Weiter unten sehen wir in der Mitte von vielen anderen, eher kryptisch anmutenden Dingen, die Ausgabe unseres Programms, nämlich "hello world".

<img width="283" alt="image" src="https://user-images.githubusercontent.com/78163337/111458210-77df7f00-8719-11eb-9e41-39180d41cfda.png">

Wer diese Ausgabe *nicht* erhält sollte sich an dieser Stelle der Troubleshooting-Sektion zuwenden. Solange ein Programm nicht abgearbeitet wird, wird auch das Folgende nicht funktionieren.

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

### .vscode und settings.json
  
Im "obersten" Ordner befindet sich hoffentlich ein Ordner namens .vscode, in dem sich wiederum eine Datei namens settings.json befindet.
  
Diese Datei gibt vscode Hinweise, wie es sich bitte verhalten soll, z. B. ob es nicht vielleicht ab und an mal alle Dateien speichern soll. 
Aus meiner Sicht vernünftige Grundeinstellungen habe ich da schon mal vorbereitet. Je nach Betriebssystem sollte man noch das sogenannte "encoding" voreinstellen. Dazu entfernt man die beiden Schrägstriche (//) am Beginn der Zeile. utfbom für MacOS und cp437 für Windows.

Bei Windowssystemen öffnet sich eine .json Datei, welche wir wieder einfach schließen können. 
Bei MacOSsystemen dagegen öffnet sich keine und man kann jedes mal beim Debuggen die zwei Schritte aus den obigen Screenshots durchlaufen oder man erstellt in dem Ordner, wo die Programmdateien sich befinden mit VSCode einen Ordner Namens '.vscode'. In diesen Ordner wird nun mit VSCode eine Datei mit dem Namen launch.json angelegt und der folgende Code reinkopiert und gespeichert (NUR FÜR MacOS NUTZER):

 ``` 
 {
   // Verwendet IntelliSense zum Ermitteln möglicher Attribute.
   // Zeigen Sie auf vorhandene Attribute, um die zugehörigen Beschreibungen anzuzeigen.
   // Weitere Informationen finden Sie unter https://go.microsoft.com/fwlink/?linkid=830387
   "version": "0.2.0",
   "configurations": [
       {
           "name": "gcc - Aktive Datei erstellen und debuggen",
           "type": "lldb",
           "request": "launch",
           "program": "${fileDirname}/${fileBasenameNoExtension}",
           "args": [],
           "stopAtEntry": false,
           "cwd": "${fileDirname}",
           "environment": [],
           "externalConsole": false,
           "MIMode": "lldb",
           "preLaunchTask": "C/C++: gcc Aktive Datei kompilieren"
       }
   ]
}
  ```

  
### Schritt 3

Damit wir später auch Programme mit Benutzereingaben, z. B. mit scanf ausführen können, klicken wir unten links auf das Zahnrad und wählen dann Settings.

<img width="219" alt="image" src="https://user-images.githubusercontent.com/78163337/112049574-1ae82c80-8b50-11eb-9a04-7d40bc4943b6.png">

Dort geben wir „code-runner.runintermimal“ in die Suche ein und überprüfen, ob der Haken gesetzt ist. Falls nicht, setzen wir den entsprechenden Haken. 

![image](https://user-images.githubusercontent.com/78163337/111459615-351ea680-871b-11eb-9819-b7dce6bfdf37.png)

### Schritt 4

Um den Debugger einzustellen und zu testen öffnen wir die Datei debugtest.c und klicken oben auf 'Run' dann 'Start Debugging' und gehen dann wie auf den Screenshots markiert vor:

<img width="453" alt="image" src="https://user-images.githubusercontent.com/78163337/111460420-3ef4d980-871c-11eb-8171-68ef90b857eb.png">

<img width="453" alt="image" src="https://user-images.githubusercontent.com/78163337/111460432-42886080-871c-11eb-8ad9-c00c8c94a59f.png">

Bei Windowssystemen öffnet sich eine .json Datei, welche wir wieder einfach schließen können. 
Bei MacOS haben wir das in Schritt 1 schon alles erledigt und der Debugger sollte einfach funktionieren.
Eine genauere Anleitung zum Debuggen findet ihr weiter unten.


 <img width="421" alt="image" src="https://user-images.githubusercontent.com/78163337/111458047-44045980-8719-11eb-8bdf-54a3d9e8febd.png">  
  
Wir gehen zuerst auf die Datei HelloWorld.c und starten das Programm, indem wir oben rechts auf Play drücken oder ein rechtsklick im Code machen und Run Code wählen.

![image](https://user-images.githubusercontent.com/78163337/112048960-41f22e80-8b4f-11eb-9cb2-14f6c10ee3bd.png)
  
Jetzt sollte das Programm erfolgreich durchlaufen worden sein und wir sehen im unteren Terminal die printf-Ausgabe hello world.

<img width="283" alt="image" src="https://user-images.githubusercontent.com/78163337/112049524-09068980-8b50-11eb-94c8-79f7167ca78e.png">
--->
