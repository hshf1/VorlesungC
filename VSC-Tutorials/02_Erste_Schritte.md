## Allgemeine Hinweise

Bei Problemen und Fehlern schaut hier: [03_Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSC-Tutorials/03_Fehlerbehebung.md).

VSCode wird wahrscheinlich ein Update auf die Insiders-Version (Beta-Version) anbieten, wovon abgeraten wird.<br />
Ein stabiler Betrieb ist wichtiger als die neuesten Features, die beim C-Programmieren kaum zum Tragen kommen werden.

<img width="419" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/9d69026b-4db7-4297-9024-9dc0bf2e1925">

Bei dieser Meldung also einfach auf `<Nicht mehr anzeigen>` klicken.

Immer dran denken, eure Programme zu speichern, bevor ihr diese ausführt. Sonst wird nur der letzte gespeicherte Zustand ausgeführt und nicht der aktuelle.

Ordnernamen und auch Dateinamen sollten weder Leerzeichen noch Umlaute enthalten! Solltet ihr eine Fehlermeldung kriegen, ist dies als erstes zu überprüfen und ggf. anzupassen. Neue Dateien, die ihr erstellt, müssen die Endung .c haben. So sagt ihr VSCode, dass ihr mit C programmieren wollt.

## Erste Schritte

<details> 
  <summary>Mit der Umgebung von VSCode vertraut machen</summary>

Damit wir uns überhaupt zurechtfinden, schauen wir uns aber erstmal an was uns VSCode in der Grundansicht alles bietet:
![VSCodeUserInterface](https://github.com/hshf1/VorlesungC/assets/100713757/89810d0d-07e8-4eb7-93ad-d770a4583267)

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
  
![image](https://github.com/hshf1/VorlesungC/assets/100713757/8588d259-44a8-43fb-9cb7-cb5772a7e9c2)

Um eine neue Datei zu erstellen, gehen wir im VSCode Explorer neben dem Namen unseres Ordners und klicken auf das erste Button, dass Blatt mit einem plus und benennen unserer Datei, in meinem Fall z.B. helloworld.c. Wichtig ist, dass ihr die Endung .c habt, damit VSCode weiß, in welcher Sprache ihr programmieren wollt.

![images](https://github.com/hshf1/VorlesungC/assets/100713757/c9b0649a-9b9e-4eb1-afe3-ba09df39a796)

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

## HSH_AddOn4VSC

Dieser Abschnitt setzt voraus, dass ihr das HSH_AddOn4VSC bereits installiert habt. Ist dies nicht der Fall, dann findet Ihr die Installationsanleitung hier: [01_Installationsanleitung.md](https://github.com/hshf1/VorlesungC/blob/main/VSC-Tutorials/01_Installationsanleitung.md).

<details>
<summary> Schnellstart HSH_AddOn4VSC</summary>
Wenn das HSH_Addon4VSC erfolgreich installiert wurde, dann findet ihr in der Activity Bar das HsH-Icon. Das sieht in etwa so aus:

![image](https://github.com/hshf1/VorlesungC/assets/100713757/73207f6c-d553-43a6-bffd-48cc6dcbfc05)

Jetzt beschäftigen wir uns kurz mit den Funktionalitäten des Addons. Hierfür klickt ihr einmal auf das HsH-Icon in der Acitivity Bar. Darauf hin solltet ihr im Explorer folgende Menüpunkte finden:

![04_addon_settings](https://github.com/hshf1/VorlesungC/assets/100713757/c0f97150-ec49-4b64-b41e-2e6c037d8222)

`<GitHub: VSCode (HsH-Repository)>`: Ein Klick auf den Button öffnet das GitHub-Repository in dem man die Installationsanleitung, die ersten Schritte und Fehlerbehebungen findet.

`<GitHub: Vorlesung C (HsH-Repository)>`: Ein Klick auf den Button öffnet das GitHub-Repository der Vorlesung in C-Programmierung, in dem ihr nützliche Informationen zur Vorlesung findet.

`<In Verzeichnis der geöffneten Datei wechseln>`: Diese Option bietet sich an, wenn ihr gerade nur eine Datei geöffnet habt, z.B. main.c. Mit einem Klick auf diesen Button öffnet ihr das Verzeichnis, in dem eure Datei liegt als Projekt-Ordner in VS Code.

`<Compiler>`: Ein Klick auf den Button öffnet die Einstellungen für Compiler. Derzeit unterstützt das HsH-Addon die Programmiersprachen C, Java und Python.

![05_compiler_settings](https://github.com/hshf1/VorlesungC/assets/100713757/fcb97887-fb25-4bdb-b556-a0d7a41ae4e0)

Mit einem Klick auf `<C-Compiler prüfen / installieren>`, `<Java-Compiler prüfen / installieren>` oder `<Python-Compiler prüfen / installieren>` in den jeweiligen Menü-Unterpunktten C-Compiler, Java-Compiler oder Python-Compiler überprüft ihr eure aktuelle Compiler-Konfiguration, wenn keine gefunden wird, dann wird ein Compiler für die ausgewählte Programmiersprache automatisch installiert, so dass ihr gleich los legen könnt.

Ihr könnt die entsprechenden Compiler mit einem Klick auf `< ... deinstallieren>` könnt ihr euren Compiler für die gewünschte Sprache auch deinstallieren. Das bietet sich z.B. an, wenn der Compiler neu installiert werden soll.

`<Einstellungen>`: Häufig sind gängige Probleme, wie zum Beispiel ein nicht funktionierender Debugger auf die Konfiguration von settings.json beziehungsweise tasks.json zurück zu führen. Daher findet sich unter "Einstellungen" auch eine Reihe von Optionen, die eine Konfiguration der beiden json-Dateien erleichtert.

![06_einstellungen](https://github.com/hshf1/VorlesungC/assets/100713757/b2864631-a452-452e-8d48-5e774d94dc62)

Die settings.json bzw. tasks.json kann mit einem Klick auf `<... überprüfen>` auf fehlende Konfigurationen überprüft werden. Sobald die Überprüfung abgeschlossen und die Anpassungen ergänzt wurden gibt das Addon eine Erfolgsmeldung aus.

Ihr könnt auch eure aktuelle settings.json bzw. tasks.json zurück setzen in dem ihr auf `< .... zurücksetzen>` klickt. Dies überschreibt die aktuelle Konfiguration mit einer gängigen Konfiguration. Diese Option bietet sich an, wenn die aktuelle Konfiguration zu umfangreich ist, sodass gewisse Einstellungen zu Komplikationen führen können.

Mit einem Klick auf `<aktuelle settings.json öffnen>` bzw. `<aktuelle tasks.json öffnen` könnt ihr die gewünschte json-Datei öffnen um auch eigene Konfigurationen händisch vornehmen zu können.

Wenn ihr aus Gründen zu einem älteren Stand der settings.json zurück kehren wollt oder sucht dort nur nach einer bestimmten Einstellung, dann kann die alte settings.json mit einem Klick auf `<alte settings.json öffnen>` aufgerufen werden.

Auch die tasks.json kann mit einem Klick auf `<tasks.json zurücksetzen>` zurück gesetzt werden. Wollt ihr selbst eure tasks.json bearbeiten, dann könnt ihr sie öffnen in dem ihr auf `<aktuelle tasks.json öffnen>` klickt.

`<LogFile öffnen>`: Öffnet eine Log-Datei, in der das Verhalten des HsH-Addons dokumentiert wird. Hier wird euch mit geteilt, ob alles einwanfrei läuft oder etwaige Fehler im Ablaufverhalten des Addons auftreten.

`<Problem melden>`: Ein Klick auf den Button öffnet das Dialogformular, mit dem ihr auftretende Fehler bzw Schwierigkeiten an die Autoren des AddOns melden könnt. Das genaue Vorgehen Anhand einer Beispielmeldung könnt ihr weiter unten nachlesen.

<details>
<summary>Ein Problem mit dem Addon melden</summary>
Der nachfolgende Abschnitt behandelt das Formular mit dem ihr ein auftrendes Problem des HsH-Addons melden könnt. Um das Formular zu öffnen, klickt einfach das das HsH-Logo in eurer Activity Bar und wählt dann den letzten Punkt `<Problem melden>` aus.  Als erstes werdet ihr aufgefordert eure Hochschul-Mailadresse einzugeben, hierzu vervollständigt ihr einfach eure Adresse in dem vorgegebenen Feld.

![01_report_formular](https://github.com/hshf1/VorlesungC/assets/100713757/96c439f0-ac1e-48aa-b342-4d3ce5570101)

Nach dem Abschicken des Problems erhaltet ihr eine Kopie der Meldung an eure E-Mail-Adresse. Sie ist außerdem hilfreich, um euch bei eventuellen Rückfragen oder individuellen Lösungesansätzen bezüglich eures Problems zu kontaktieren.

Habt ihr die Eingabe eurer E-Mail-Adresse mit einem Druck auf die Enter-Taste bestätigt, werdet ihr im zweiten Schritt dazu aufgefordert, euer Problem zu erläutern.

![02_report_formular](https://github.com/hshf1/VorlesungC/assets/100713757/0f27f0f6-f0b2-42cf-8f62-94114faf644e)

Hier beschreibt ihr kurz den Zusammenhang eures Problems. Wenn ihr fertig seid, drückt ihr erneut auf "Enter". Im dritten Schritt könnt der Anfertigung eines Screenshots zustimmen, oder ablehnen.

![03_report_problem](https://github.com/hshf1/VorlesungC/assets/100713757/eff0c808-8084-43f7-b7f1-91baf3ac3241)

Hierfür klickt ihr entweder auf "Ja" oder "Nein". Bei einem Klick auf "Ja" wird automatisch ein Screenshot von eurem aktuellen Bildschirm angefertigt, sodass ein späteres Nachvollziehen des aufgetretenden Problems leichter nachvollziehbar wird.

Im vierten Schritt werdet ihr gefragt ob ihre eure momentan geöffnete Datei an die Problemmeldung anhängen möchtet. Eine Kopie der Datei, die im Zusammenhang mit eurem Problem hängt, kann eine Lösung des Problems deutlicher spezifizieren. Möchtet ihr die Datei anhängen, dann bestätgit es mit einem Klick auf "Ja" oder lehnt mit "Nein" ab.

![04_report_formular](https://github.com/hshf1/VorlesungC/assets/100713757/03b4a46c-2d71-4350-9c16-38d1baa62627)

Euere Meldung sollte nun vorbereitet sein, so dass ihr zum Schluss noch gefragt werdet, ob sie absenden wollt. "Klickt hier auf "Ja" um euer Problem zu melden oder auf "Nein" um den Vorgang abzubrechen

![05_report_formular](https://github.com/hshf1/VorlesungC/assets/100713757/459b97bf-294b-41b2-b1b5-e1b18248f989)

Ihr könnt auch in jedem Schritt des Formulars den Vorgang abbrechen, in dem ihr auf die "ESC"-Taste drückt.
</details>

</details>

## Live Share
  
Live Share ist eine optionale Erweiterung für euch. Ihr könnt damit zusammen mit anderen Studenten, die VSCode und diese Erweiterung installiert haben, zusammen programmieren. Eine Begrenzung der Anzahl gleichzeitiger Teilnehmer ist nicht bekannt und ihr könnt euch so gegenseitig auch bei schwierigen Aufgaben helfen und die Aufgabe aufteilen bzw. jeder seinen eigenen Losungsweg präsentieren. Auch wird euch euer Prof. damit bei der Vorlesung einladen, ihn beim coden direkt über VSCode mitzuverfolgen bzw. ihr könnt Vorschläge und Programmieransätze so direkt mit dem Prof. teilen.
  
<details>
  <summary>Live Share Anleitung</summary>
Zur Verwendung von Live Share muss die Erweiterung Live Share Extension Pack in VSCode installiert sein. Dieses sollte bei der Installation von VSCode mitinstalliert worden sein. Falls dies nicht der Fall ist, z.B. weil nach einer alten Anleitung installiert wurde, dann installiert ihr die Erweiterung, indem ihr Links auf die 3+1 Würfel drauf klickt und im Suchfenster Live Share Extension Pack eingebt.

![Erweiterung LiveShare](https://github.com/hshf1/VorlesungC/assets/100713757/886ed166-4474-4e5e-b1aa-334fcd78e0ea)
  
Dann müsst ihr nur die Erweiterung installieren und VSCode neustarten.
Nach dem Neustart sollte unten links im blauen Balken ein Button von LiveShare erscheinen.

![LiveShare Button](https://github.com/hshf1/VorlesungC/assets/100713757/1e6db185-428c-45fb-97b1-1c554e825ec8)

Dort klicken wir auf den Live Share Button und es öffnet sich oben ein Menü mit der Auswahl, wie man sich anmelden möchte. Es besteht die Möglichkeit, mit einem vorhandenen GitHub Account sich anzumelden oder mit einem Microsoft Konto. Einen Microsoft Konto habt ihr von der Hochschule bekommen, dieser kann auch hier verwendet werden.
  
![LiveShare Anmeldung](https://github.com/hshf1/VorlesungC/assets/100713757/d9131605-b8e3-440b-98bb-aba34270797a)

Nach der Anmeldung ist unten links im blauen Balken neben dem Live Share Button nun auch ein Button mit dem Namen eures Kontos, den ihr zur Anmeldung genutzt habt.
  
![LiveShare nach Anmeldung](https://github.com/hshf1/VorlesungC/assets/100713757/c2c92fa1-c263-4338-8223-48646f4e7b43)
  
Klicken wir nun auf unseren Namen, erscheint oben ein Menü. Da können wir auswählen, ob wir eine normale Collaboration Session starten wollen, wo jeder schreiben und lesen kann, eine read-only Collaboration Session starten wollen, wo jeder eingeladene nur lesen kann oder ob wir einer vorhandenen Collaboration Session mittels eines links beitreten wollen.
  
![Live Share Collaboration](https://github.com/hshf1/VorlesungC/assets/100713757/6c5f1ceb-9b2c-43f5-8aa0-59892e18febe)
  
Wir können auch neben dem Namen auf den Live Share Button klicken. Der öffnet dann eine normale Collaboration Session und man bekommt rechts unten eine Auswahlmöglichkeit.
  
![LiveShare Button](https://github.com/hshf1/VorlesungC/assets/100713757/877822cd-5e52-450b-84c1-419bae231f9f)

Man kann auch hier auswählen, ob man die normalle Session in eine read-only Session umwandeln möchte und man kann den Einladungslink nochmal kopieren. Diesen Link könnt ihr allen schicken, die beitreten sollen. Auch eingeladene Personen benötigen Live Share.
  
Wenn wir während der Session wieder unten links im blauen Balken auf unseren Namen klicken, so öffnet sich oben wieder ein Menü.
  
![LiveShare Exit](https://github.com/hshf1/VorlesungC/assets/100713757/0d00ef4f-2414-445a-bb03-013e62cf72ae)

Dort können wir den Einladungslink wieder kopieren, einen Audio Call starten oder die Session beenden.
  
</details>
  
## Debuggen

<details>
<summary>Ausführliche Anleitung zum Debuggen</summary>
Das Folgende ist eher ein Funktionstest oder ein erstes Kennenlernen des Debuggers, kein kompletter Vorgehensvorschlag oder Best Practice zum Debuggen! Einen Link zu einer etwas tiefergehenden Einführung zur Arbeit mit dem Debugger findet ihr am Ende dieser Sektion!  
  
Zum Debugger gelangen wir z.B., indem wir links auf das Symbol mit Play-Button und Käfer klicken.
Indem wir links neben die Zeilennummern klicken, können wir sogenannte Breakpoints einfügen, die sich durch rote Punkte zu erkennen geben, und wollen dies auch großzügig wie im gezeigten Screenshot tun, danach starten wir den Debugger durch Klick auch den grünen Play-Button:

![image](https://github.com/hshf1/VorlesungC/assets/100713757/43739f52-b1f2-441f-adf0-b08cb7c45f47)

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

![Bildschirmfoto 2021-10-13 um 12 16 31](https://github.com/hshf1/VorlesungC/assets/100713757/3ce8b0b3-7331-4612-a1e7-30831f837f19)

Alternativ könnt ihr an die gleiche Stelle auch rechtsklicken und so einen Breakpoint hinzufügen. Durch rechtsklick auf einen bestehenden Breakpoint könnt ihr ihn entfernen.

![breakpointrechtsklick](https://github.com/hshf1/VorlesungC/assets/100713757/717c62a1-08ce-4b05-87b7-0fcf751c4275)

Den Debugger startet man mit klick auf das grüne "Play"-Symbol oben links, oder durch drücken von F5:
![startdebugging](https://github.com/hshf1/VorlesungC/assets/100713757/e7fb9738-ed12-47e7-8d87-db49cf28bcd6)

Bitte betrachtet jetzt den folgenden Screenshot. Hier könnt ihr folgendes erkennen:
1. Das Programm steht in der Zeile 7. Die Zeile 7 wurde noch NICHT ausgeführt.
2. Die beobachtete Variable i ist noch nicht initialisiert und zeigt einen Wert von i=69669. Bei euch wird dieses mit an Sicherheit grenzender Wahrscheinlichkeit ein anderer Wert sein!
3. Das Ausgabefenster (Terminal) ist noch leer, da noch nichts über den Befehl printfausgegeben wurde. 
4. Am oberen Rand des Fensters seht ihr eine neue Schaltfläche für den Debugger.

![debuggingfirststep](https://github.com/hshf1/VorlesungC/assets/100713757/3be16ab0-4302-4668-8e90-7b022107122b)

Im Debugger Fenster könnt ihr jetzt per klick auf das + rechts neben "WATCH" Variablen hinzufügen, die ihr beobachten möchtet. Hier bietet sich die Variable i an: 

![addexpression](https://github.com/hshf1/VorlesungC/assets/100713757/ca3b145c-e7b5-4aa2-bedd-33233562c8b0)

In der Debugging-Toolbar befindet sich ein Pfeil nach unten mit einem Punkt darunter. Diese Funktion hört in VSCode auf den schönen Namen "Step into", wird hier jedoch im folgenden "nächster Schritt genannt. .Sie lässt sich auch mit F11 aufrufen.

![debuggingtoolbar](https://github.com/hshf1/VorlesungC/assets/100713757/5ce20264-d74d-4598-9b1a-44b26d8e651c)

Klickt nun bitte 3x auf die Schaltfläche „Nächster Schritt“. Status danach:
1. Das Abarbeitungszeichen zeigt auf die Zeile 10. 
2. Die "Debug Console" zeigt „@"Hallo!\r\n"
3. Die Variable i hat den Inhalt 1 (i: 1).

![debuggingline10](https://github.com/hshf1/VorlesungC/assets/100713757/689b0f10-8838-4ef6-9368-b8fa020af2ea)

Wenn ihr über „Nächsten Schritt“ das Programm bis zur Zeile 15 (return 0;) weiter ausführt, habt ihr dieses Bild:

![debuggingcomplete](https://github.com/hshf1/VorlesungC/assets/100713757/09e9909c-3e16-461c-820d-1c46f7b01022)

Es wurden die vier "Hallos" ausgegeben und die Variable i trägt den Wert 3.

Manch einer mag sich gefragt haben, was es bringen soll die Variable i "doppelt" zu überwachen. Unter "WATCH" kann nicht nur Variablen anzeigen lassen, sondern ganze Ausdrücke. Mit "i, c" z. B. den zugehörigen Character oder mit "2\*i" den doppelten Wert von i. Wenn man z. B. 8\*M_PI als Abbruchbedingung für eine Schleife gewählt hat ist es sicherlich komfortabler i < 8\*3.14 zu überwachen, als das im Kopf auszurechnen.

![image](https://github.com/hshf1/VorlesungC/assets/100713757/192b82ae-65aa-44f7-b482-77e65e2f1557)

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

<img width="239" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/4b536145-961d-487a-8e1b-75878d28f9de">

Und wählen unter Dokumente\VSCodeForC\ den Ordner Projekte
  
#### Es ist wichtig, dass es genau dieser Ordner ist!
  
  Erläuterung: VSCode sucht im obersten geöffneten Ordner, und nur dort, nach einem Ordner ".vscode". Wenn es fündig wird entnimmt es diesem Einstellungen die man sonst von Hand vornehmen müsste. Die habe ich vorbereitet und als ihr den "git"-Befehl ausgeführt habt, habt ihr die runtergeladen. Wenn ihr aus irgendeinem Grund beim Öffnen von VSCode oder später in VSCode einen Ordner öffnet und dort Programme speichern möchtet, muss in diesen Ordner eine Kopie des .vscode-Ordners. 

<img width="371" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/21bdb64a-cf94-47d2-a117-31d12d8d6fe4">

Wir finden im Ordner Programmiersprache_C fertig vorbereitet die Datei HelloWorld.C 

##### code-runner

Damit unsere Programme später Input vom Terminal entgegennehmen können, z. B. mit scanf, müssen wir noch eine Einstellung vornehmen.

Also begeben wir uns die die Settings, geben „code-runner.runinterminal“ in die Suche ein und setzen den entsprechenden Haken.

<img width="310" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/cfbaff5f-216f-4dd0-991b-e51b287623c0">

![image](https://github.com/hshf1/VorlesungC/assets/100713757/e7e2eef2-4869-4ad7-bf26-41570d367d96)


#### Konfiguration des Debuggers

Für den Fall, dass es in etwas komplizierteren Programmen zu Beginn mal nicht ganz rund läuft, richten wir auch gleich noch den Debugger ein.
Ein Debugger ist ein Werkzeug, das bei der Fehlersuche behilflich ist. Man kann es sich vielleicht als MRT oder Röntgengerät mit eingebauter Zeitlupe vorstellen.

Unser erstes Beispielprogramm HelloWorld.c funktioniert einerseits gut und enthält andererseits keine Variablen und nur eine Zeile sinnvoll "untersuchbaren" Code, sodass es zum Ausprobieren des Debuggers ungeeignet ist.

Wir wählen links die Datei debugtest.c und klicken oben auf

> Terminal

und dann

> Configure Default Build Task

Auf meinem Rechner ist noch ein weiterer Compiler installiert, nicht irritieren lassen, wenn die Auswahl ein wenig anders aussieht.

![image](https://github.com/hshf1/VorlesungC/assets/100713757/dd8c3d74-909d-43a1-ba35-fb4db0c1d43b)

In unserem Projekte Ordner legt uns VSCode nun automatisch eine Datei „tasks.json“ an. Diese gilt auch für alle Programme in diesem Ordner, wir müssen diesen Schritt also nur einmal ausführen. Sollte es im Folgenden Probleme geben, ist eine funktionierende Version dieser Datei im Anhang. Pfade, etc. können aber abweichen, daher dient diese eher dem Vergleich, als dem kompletten Ersetzen.

Wir schreiben nun unser zweites Programm „debugtest.c“, mit dem Inhalt aus dem Screenshot unten:

<img width="226" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/5c75b526-4074-415a-a669-46dfdaad525e">

**_Jetzt ist es wichtig, dass tatsächlich auch debugtest.c geöffnet und markiert ist (Focus hat), und nicht tasks.json, da VSCode nun eine weitere Konfigurationsdatei erzeugen wird, und zwar basierend auf der aktiven Datei._**

Wir achten also darauf, dass wir unseren Code sehen können und klicken oben auf
> Run
und dann
> Start Debugging
und gehen dann wie auf den Screenshots markiert vor:

![image](https://github.com/hshf1/VorlesungC/assets/100713757/73014890-75c1-48ca-90f1-a74866a41af8)

![image](https://github.com/hshf1/VorlesungC/assets/100713757/f4f31c83-63d8-40df-82ff-3973e2fc24c8)

Das Programm ist kurz und unspektakulär, aber ein echter Klassiker.

Wir rechtsklicken in das Fenster mit unserem Code und wählen „Run Code“

<img width="385" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/7195a2cb-dc32-49c3-a57c-d1a376dd0517">

Weiter unten sehen wir in der Mitte von vielen anderen, eher kryptisch anmutenden Dingen, die Ausgabe unseres Programms, nämlich "hello world".

<img width="283" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/9f51c5e1-96f0-419a-87c4-0d07d69fe10e">

Wer diese Ausgabe *nicht* erhält sollte sich an dieser Stelle der Troubleshooting-Sektion zuwenden. Solange ein Programm nicht abgearbeitet wird, wird auch das Folgende nicht funktionieren.

### Ordner anlegen

Das Anlegen eines neuen Ordner ist denkbar einfach, jedoch gibt es ein paar Kleinigkeiten zu beachten, die sonste große Kopfschmerzen bereiten können.

Die wichtigste ist es Sonder- und Leerzeichen, Umlaute und andere nicht-ASCII-Zeichen unbedingt zu vermeiden. Spätestens wenn das eigene Programm inklusive Unterordner auf einem Produktionsserver ohne grafische Benutzeroberfläche landet führt das zu allerlei Schwierigkeiten. Wahrscheinlich geht es einem aber schon auf dem eigenen Rechner gehörig auf die Nerven.

Wie fast immer in VSCode führen viele Wege ans Ziel und es ist Geschmackssache, welchen man wählt.

Im folgenden Screenshot sind mal drei Möglichkeiten markiert (eine mit vorherigem Rechtsklick):

![image](https://github.com/hshf1/VorlesungC/assets/100713757/65d98f36-2bd7-4bb2-883b-a53da886db83)


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

<img width="219" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/7f2d8ffb-fadc-45f0-b327-81539f6fcd1d">

Dort geben wir „code-runner.runintermimal“ in die Suche ein und überprüfen, ob der Haken gesetzt ist. Falls nicht, setzen wir den entsprechenden Haken. 

![image](https://github.com/hshf1/VorlesungC/assets/100713757/ae353239-9764-4341-8b11-05062cdae49a)

### Schritt 4

Um den Debugger einzustellen und zu testen öffnen wir die Datei debugtest.c und klicken oben auf 'Run' dann 'Start Debugging' und gehen dann wie auf den Screenshots markiert vor:

<img width="453" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/22d822e5-4a6c-4ff0-8f80-e6357a11f255">

<img width="453" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/02b6aa6f-99e4-4925-ac82-bb55f948e7fe">

Bei Windowssystemen öffnet sich eine .json Datei, welche wir wieder einfach schließen können. 
Bei MacOS haben wir das in Schritt 1 schon alles erledigt und der Debugger sollte einfach funktionieren.
Eine genauere Anleitung zum Debuggen findet ihr weiter unten.


 <img width="421" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/0d1bd197-0625-49ac-a1ee-a3a5fb743297">
  
Wir gehen zuerst auf die Datei HelloWorld.c und starten das Programm, indem wir oben rechts auf Play drücken oder einen Rechtsklick im Code machen und Run Code wählen.

![image](https://github.com/hshf1/VorlesungC/assets/100713757/7c2836f5-a4e3-4314-bbb5-71a67eaad531)
  
Jetzt sollte das Programm erfolgreich durchlaufen worden sein und wir sehen im unteren Terminal die printf-Ausgabe hello world.

<img width="283" alt="image" src="https://github.com/hshf1/VorlesungC/assets/100713757/c47ef79b-9d5d-4ec0-8741-962b3c4ca3dc">

--->
