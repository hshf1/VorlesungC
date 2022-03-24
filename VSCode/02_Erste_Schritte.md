# Erste Schritte (in Bearbeitung)

## Grundeinstellungen

<details>
  <summary>Test</summary>
  # Grundeinstellungen (in Bearbeitung)
https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/hshf1/VorlesungC/tree/main/VSCode/VSCode
#### Grundeinrichtung

In der Startansicht wählen wir `<„Open folder…“>`

Hier können wir z.B. im Ordner „Dokumente“ einen neuen Ordner „Projekte“ anlegen.
In diesem erstellen wir eine neue Datei,

nennen sie 
> HelloWorld.c
Und füllen sie auch gleich mit unserem ersten kleinen Programm:

<img width="376" alt="image" src="https://user-images.githubusercontent.com/78163337/112048927-369f0300-8b4f-11eb-9c8b-967b51e6c29b.png">

Wir rechtsklicken (oder control+Klick) in das Fenster mit unserem Code und wählen „Run Code“. Alternativ Klicken wir oben rechts auf Play oder benutzen die Tastenkombination aus dem Screenshot:

![image](https://user-images.githubusercontent.com/78163337/112048960-41f22e80-8b4f-11eb-9cb2-14f6c10ee3bd.png)

Sollte es dabei Problemchen geben, kann das an einem Tippfehler liegen, mit dem wir uns hier nicht lange aufhalten wollen. 

<details>
<summary>Daher hier das Programm zum Kopieren und Einfügen</summary>

> #include <stdio.h>
> int main(){
>   printf("Hello World!\n");
>   return 0;
> }

</details>

Spätestens jetzt können wir uns hoffentlich über unser erstes Programm freuen:

<img width="283" alt="image" src="https://user-images.githubusercontent.com/78163337/112049524-09068980-8b50-11eb-94c8-79f7167ca78e.png">

##### Code-Runner

Damit wir später auch Programme mit Benutzereingaben, z. B. mit scanf, ausführen können, klicken wir unten links auf das Zahnrad und wählen dann Settings.

<img width="219" alt="image" src="https://user-images.githubusercontent.com/78163337/112049574-1ae82c80-8b50-11eb-9a04-7d40bc4943b6.png">

Dort geben wir „code-runner.runintermimal“ in die Suche ein und setzen den entsprechenden Haken. 

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


</details>
<br /><br />

### Konfiguration von VSCode

#### Grundeinrichtung

Auch die Grundeinrichtung von VSCode beginnen wir in PowerShell, diesmal jedoch als normaler Benutzer. Der Nutzer in diesem Beispiel heißt mail und er möchte seine Programm im „Dokumente“-Ordner aufbewahren, also wechseln wir mit 

> cd Documents

in das Verzeichnis:

<img width="159" alt="image" src="https://user-images.githubusercontent.com/78163337/111457345-5a5de580-8718-11eb-84e8-60ab31ce04f5.png">

Dort laden wir uns mit

> git clone https://github.com/hshf1/vscodeforc.git

die Konfiguration (fast) fix und fertig von Github herunter:

Jetzt ist es endlich soweit und wir öffnen Visual Studio Code.


  

  
Ein kleiner Hinweis vorab: 
  
Irgendwann wird VSCode wahrscheinlich
  a) anbieten die Sprache zu wechseln (im Zweifelsfall auf die des Betriebssystems)   

Zu a) Es ist natürlich Geschmacksache in welcher Sprache man seinen Editor haben möchte. Diese Anleitung bleibt bei Englisch. Ich empfehle daher dringend zumindest bis zum Ende dieses Tutorials die Sprache nicht zu ändern. Auch würde ich die Sprache nicht ändern, bevor der jeweilige Lehrende sagt, welche Sprache er oder sie benutzen wird. Ein gewichtiger Grund bei Englisch zu bleiben ist, dass es erfahrungsgemäß deutlich leichter ist einer Suchmaschine einen hilfreichen Treffer zu entlocken, wenn man eine englische Fehlermeldung eingibt.
  
In der Startansicht wählen wir „Open folder…“

<img width="239" alt="image" src="https://user-images.githubusercontent.com/78163337/111457735-dce6a500-8718-11eb-8ad8-504a45538b74.png">

Und wählen unter Dokumente\VSCodeForC\ den Ordner Projekte
  
#### Es ist wichtig, dass es genau dieser Ordner ist!
  
  Erläuterung: VSCode sucht im obersten geöffneten Ordner, und nur dort, nach einem Ordner ".vscode". Wenn es fündig wird entnimmt es diesem Einstellungen die man sonst von Hand vornehmen müsste. Die habe ich vorbereitet und als ihr den "git"-Befehl ausgeführt habt, habt ihr die runtergeladen. Wenn ihr aus irgendeinem Grund beim Öffnen von VSCode oder später in VSCode einen Ordner öffnet und dort Programme speichern möchtet, muss in diesen Ordner eine Kopie des .vscode-Ordners.

<img width="371" alt="image" src="https://user-images.githubusercontent.com/78163337/111457815-f7b91980-8718-11eb-8ec2-c96cdb9df8e1.png">

Wir finden im Ordner Programmiersprache_C fertig vorbereitet die Datei HelloWorld.C

<img width="421" alt="image" src="https://user-images.githubusercontent.com/78163337/111458047-44045980-8719-11eb-8bdf-54a3d9e8febd.png">

Das Programm ist kurz und unspektakulär, aber ein echter Klassiker.

Wir rechtsklicken in das Fenster mit unserem Code und wählen „Run Code“

<img width="385" alt="image" src="https://user-images.githubusercontent.com/78163337/111458152-626a5500-8719-11eb-87fc-40ae6b391886.png">

Weiter unten sehen wir in der Mitte von vielen anderen, eher kryptisch anmutenden Dingen, die Ausgabe unseres Programms, nämlich "hello world".

<img width="283" alt="image" src="https://user-images.githubusercontent.com/78163337/111458210-77df7f00-8719-11eb-9e41-39180d41cfda.png">

Wer diese Ausgabe *nicht* erhält sollte sich an dieser Stelle der Troubleshooting-Sektion zuwenden. Solange ein Programm nicht abgearbeitet wird, wird auch das Folgende nicht funktionieren.



  
##### code-runner

Damit unsere Programme später Input vom Terminal entgegennehmen können, z. B. mit scanf, müssen wir noch eine Einstellung vornehmen.

Also begeben wir uns die die Settings, geben „code-runner.runinterminal“ in die Suche ein und setzen den entsprechenden Haken.

<img width="310" alt="image" src="https://user-images.githubusercontent.com/78163337/111459570-246e3080-871b-11eb-8050-d287916a961c.png">

![image](https://user-images.githubusercontent.com/78163337/111459615-351ea680-871b-11eb-9819-b7dce6bfdf37.png)

#### Konfiguration des Debuggers

Für den Fall, dass es in etwas komplizierteren Programmen zu Beginn mal nicht ganz rund läuft, richten wir auch gleich noch den Debugger ein.
Ein Debugger ist ein Werkzeug, das bei der Fehlersuche behilflich ist. Man kann es sich vielleicht als MRT oder Röntgengerät mit eingebauter Zeitlupe vorstellen.

Unser erstes Beispielprogramm HelloWorld.c funktioniert einerseits gut und enthält andererseits keine Variablen und nur eine Zeile sinnvoll "untersuchbaren" Code, sodass es zum Ausprobieren des Debuggers ungeeignet ist.

Wir wählen daher links die Datei debugtest.c und klicken oben auf

> Run

und dann

> Start Debugging

und gehen dann wie auf den Screenshots markiert vor:

<img width="453" alt="image" src="https://user-images.githubusercontent.com/78163337/111460420-3ef4d980-871c-11eb-8171-68ef90b857eb.png">

<img width="453" alt="image" src="https://user-images.githubusercontent.com/78163337/111460432-42886080-871c-11eb-8ad9-c00c8c94a59f.png">

An dieser Stelle sind wir mit dem windows-spezifischen Teil der Installation und Grundeinrichtung durch, und begeben uns in den allgemeinen Teil dieses Tutorials, um unsere Arbeit zu testen und auszuprobieren.
  

  </details>

Ein kleiner Hinweis vorab: Irgendwann wir VSCode wahrscheinlich ein Update auf die Insiders-Version anbieten. Davon wird abgeraten. Insiders bedeutet hier Beta-Tester und ein stabiler Betrieb ist wichtiger als die neuesten Features, die beim C-Programmieren kaum zum Tragen kommen werden.

<img width="419" alt="image" src="https://user-images.githubusercontent.com/78163337/111457567-a446cb80-8718-11eb-9e1d-26213b51a86c.png">

Bei dieser Meldung also einfach auf `<Nicht mehr anzeigen>` klicken.

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

##Debuggen

<details>
<summary>Debuggen</summary>
  </details>
