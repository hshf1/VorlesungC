<!--Liste von nutzbaren Emojis im Markdown: https://github.com/ikatyang/emoji-cheat-sheet#symbols -->

<!--Start Buttons (im oberen Bereich der Seite)-->
<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/01_vscode"><img src="https://img.shields.io/badge/VSCode-Q%26A-informational?logo=visualstudiocode" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/5"><img src="https://img.shields.io/badge/Anleitung_bewerten-red?logo=visualstudiocode" height="25"/></a>
<!--Ende Buttons-->
<!--Start Anleitung-->
# VSCode Installationsanleitung

Dies ist eine Anleitung (von Studenten für Studenten) zur Installation von VSCode für die Vorlesung C. Für die Installation ist es erforderlich, dass über <b>Adminrechte</b> verfügt wird.<br />

Sollten Probleme auftreten, könnt ihr die in dieser Anleitung erklärte Fehleranalyse ausführen. Dort werden einige mögliche Fehler ausfindig gemacht und ein Fehlercode ausgegeben. Hier kann dann nach einer Lösung geschaut werden: [03_Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md). <br />

Ist euer Problem dort nicht geschildert oder dennoch nicht behoben, so schickt ihr bitte eine E-Mail mit der Logfile im Anhang an den/die vom Prof. benannte/n Betreuer/in dieser Anleitung.<br />

<p align="center">:warning:<b>Hinweis</b>:warning:</p>
Nach der Installation erscheint eine Datei auf dem Desktop mit dem Namen "C_Uebung.code-workspace" (im Computerraum heißt es "C_Uebung.cmd"). Die Datei kann nach belieben verschoben werden. Mit einem Doppelklick auf diese Datei öffnet sich VSCode automatisch mit dem Ordner, der bei der Installation miterstellt wurde (in Dokumente/C_Uebung bzw. im Computerraum U:/C_Uebung). Dort können Programme erstellt und gespeichert werden. Der Debugger und der Runner funktionieren nur richtig, wenn ein Ordner geöffnet wurde. So hilft die Verknüpfung, dies nicht zu vergessen. 

<!--Start MacOS-Anleitung-->

## <p align="center">MacOS</p>

<details>
<summary>VSCode auf MacOS installieren.</summary>
<br />
Für die Installation von VSCode auf dem MacOS ist das Terminal zu starten.<br /><br />
  
<img width="392" alt="Bildschirmfoto 2022-10-23 um 02 47 45" src="https://user-images.githubusercontent.com/100713757/197367855-42cb8849-0f3f-48de-88da-cea064dcccfe.png">

Nun wird folgender Code kopiert, im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
  
```sh
curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | bash 
```
<!--Passwort wird zurzeit nicht abgefragt: sudo wurde entfernt
Nun werdet ihr nach eurem Passwort gefragt. <br />

<img width="561" alt="Bildschirmfoto 2022-04-17 um 05 38 59" src="https://user-images.githubusercontent.com/100713757/163699305-1b6cf156-158f-4c7c-880f-c51858000e5e.png">
  
Gebt das Passwort ein, dass ihr auch für die Anmeldung am Laptop nutzt und drückt auf Enter auf der Tastatur. -->

Am Ende sollte dann Installation beendet erscheinen. <br />
<img width="750" alt="Bildschirmfoto 2022-04-17 um 05 33 50" src="https://user-images.githubusercontent.com/100713757/163699227-a2bf91bd-3c4f-42d6-a16b-a7946f22f5c9.png">
  
Das Terminal kann nun beendet werden.

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.
  
</details>

<details>
<summary>VSCode ist bereits installiert.</summary>
  
Das ist kein Problem, führe die oben beschriebene Installationsanleitung einfach ganz normal durch.
Bereits installierte Programme bleiben erhalten und nur fehlende dazu installiert.

</details>

<details>
<summary>VSCode auf MacOS deinstallieren.</summary>
<br />
Falls trotz erneuter Installation nach der obigen Anleitung Fehler auftreten und sich nicht beheben, besteht die Möglichkeit, alles komplett zu deinstallieren und zu löschen. Danach kann man erneut die oben beschriebene Installation durchführen.
<br />
Für die Deinstallation von VSCode auf dem MacOS ist das Terminal zu starten.<br /><br />
  
<img width="392" alt="Bildschirmfoto 2022-10-23 um 02 47 45" src="https://user-images.githubusercontent.com/100713757/197367855-42cb8849-0f3f-48de-88da-cea064dcccfe.png">

Nun wird folgender Code kopiert, im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
  
```sh
curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | uninstall=true bash 
```
  
Am Ende sollte dann für 5 Sekunden Installation beendet erscheinen. <br />
<img width="750" alt="Bildschirmfoto 2022-04-17 um 05 33 50" src="https://user-images.githubusercontent.com/100713757/163699227-a2bf91bd-3c4f-42d6-a16b-a7946f22f5c9.png">
  
Das Terminal beendet sich selbst und öffnet eine auf eurem Schreibtisch (Desktop) befindende Logfile. Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin. Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
    
Nun ist alles deinstalliert und gelöscht und es kann mit der Installation wieder von vorne begonnen werden.
  
</details>

<details>
<summary>Fehleranalyse am MacOS.</summary>

Für die Fehleranalyse von VSCode auf dem MacOS ist das Terminal zu starten.<br /><br />
  
<img width="392" alt="Bildschirmfoto 2022-10-23 um 02 47 45" src="https://user-images.githubusercontent.com/100713757/197367855-42cb8849-0f3f-48de-88da-cea064dcccfe.png">

Nun wird folgender Code kopiert, im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
  
```sh
curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/Fehleranalyse.sh | bash 
```

Die in der LogFile angezeigten Fehler enthalten Fehlercodes, die in der [Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md) nachgesehen werden können. Dort wird erklärt, wie vorzugehen ist.
  
</details>

<!--Ende MacOS-Anleitung-->

<!--Start Windows-Anleitung-->
## <p align="center">Windows</p>
<!--Neue Windows-Anleitung ohne Download-->
<details>
<summary>VSCode auf Windows installieren.</summary>
<br />
AKTUELLER HINWEIS: Auf Windows 11 bzw. an Windowssystemen, die OneDrive nutzen, kommt es zurzeit zu einer Fehlermeldung am Ende der Installation, dass der Pfad für die LogDatei nicht gefunden wurde. Dies wird demnächst behoben, hat jedoch keine Auswirkung auf die Installation. VSCode kann dennoch nach der Installation genutzt werden!
<br /><br />
Für die Installation ist die Windows Eingabeaufforderung (Windows Terminal) als Administrator zu starten.<br /><br />
  
![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

Nun wird der folgende Code kopiert und im Terminal eingefügt und mit der ENTER-Taste ausgeführt:

```cmd
curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/VSCodeWindows.cmd -o %temp%\VSCodeWindows.cmd && %temp%\VSCodeWindows.cmd && del %temp%\VSCodeWindows.cmd && EXIT /B
```

Nun läuft die Installation von alleine und meldet euch, wenn es fertig ist. <br /><br />
  
![Screenshot (22)](https://user-images.githubusercontent.com/100713757/166149376-7700c166-11da-442f-a8ab-68e2da784fe9.png)

Bei der Meldung klicken wir auf <b>OK</b>, dass Terminal schließt nun automatisch und es erscheint ein Logfile, welches sich auf eurem Desktop befindet. <br /><br />
  
![Screenshot (23)](https://user-images.githubusercontent.com/100713757/166149506-b4171410-2132-45ac-af4d-1284638c1e3d.png)
  
Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin.
Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
  
Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.
  
</details>  
<!--Ende neue Windows-Anleitung ohne Download-->
    
<details>
<summary>VSCode ist bereits installiert.</summary>
  
Das ist kein Problem, führe die oben beschriebene Installationsanleitung einfach ganz normal durch.<br />
Bereits installierte Programme bleiben erhalten und nur fehlende dazu installiert.

</details>

<details>
<summary>VSCode auf Windows deinstallieren.</summary>
<br />
Falls trotz erneuter Installation nach der obigen Anleitung Fehler auftreten und sich nicht beheben lassen, besteht die Möglichkeit, alles komplett zu deinstallieren und zu löschen. Danach kann man erneut die oben beschriebene Installation durchführen.
<br />
Für die Deinstallation ist die Windows Eingabeaufforderung (Windows Terminal) als Administrator zu starten.<br /><br />
  
![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

Nun wird der folgende Code kopiert und im Terminal eingefügt und mit der ENTER-Taste ausgeführt:

```cmd
curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/VSCodeWindows.cmd -o %temp%\VSCodeWindows.cmd && %temp%\VSCodeWindows.cmd uninstall && del %temp%\VSCodeWindows.cmd && EXIT /B
```

Nun läuft die Deinstallation von alleine und meldet euch, wenn es fertig ist.
![Screenshot (22)](https://user-images.githubusercontent.com/100713757/166149376-7700c166-11da-442f-a8ab-68e2da784fe9.png)

Bei der Meldung klicken wir auf <b>OK</b>, dass Terminal schließt nun automatisch und es erscheint ein Logfile, welches sich auf eurem Desktop befindet.
![Screenshot (23)](https://user-images.githubusercontent.com/100713757/166149506-b4171410-2132-45ac-af4d-1284638c1e3d.png)
  
Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin.
Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
    
Nun ist alles deinstalliert und gelöscht und es kann mit der Installation wieder von vorne begonnen werden.
  
</details>

<details>
<summary>Fehleranalyse am Windows. (folgt) </summary>
  
</details>

<!--Ende Windows-Anleitung-->

<!--Start Linux-Anleitung-->

## <p align="center">Linux</p>

<!--Neue Linux-Anleiung-->
<details>
<summary>VSCode auf Linux installieren.</summary>
<br />
Bisher getestet für: Ubuntu / Zorin 15.3<br /><br />
Für die Installation ist das Terminal zu öffnen.<br />

<img width="566" alt="Bildschirmfoto 2022-04-17 um 05 31 43" src="https://user-images.githubusercontent.com/100713757/163699216-b1eb7dd1-ffce-4bcd-be21-1691adaf0c6b.png">
  
Der folgende Code wird kopiert, im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
sudo snap install curl && curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/VSCodeLinux.sh | bash && exit
```

Das Terminal beendet sich selbst und öffnet eine auf eurem Schreibtisch (Desktop) befindende Logfile, die ihr nach erfolgreicher Installation löschen könnt. Bei anhaltenden Problemen bitte diesen Logfile im Anhang per Mail abschicken.

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.

</details>

<details>
<summary>VSCode ist bereits installiert.</summary>
  
Das ist kein Problem, führe die oben beschriebene Installationsanleitung einfach ganz normal durch.
Bereits installierte Programme bleiben erhalten und nur fehlende dazu installiert.

</details>

<details>
<summary>VSCode auf Linux deinstallieren. (folgt) </summary>
  
</details>

<details>
<summary>Fehleranalyse am Linux. (folgt) </summary>
  
</details>
<!--Ende Linux-Anleitung-->

<!--Start Computerraum-Anleitung-->
## <p align="center">Computerraum an der Hochschule</p>

<details>
<summary>VSCode auf Rechner im CR installieren.</summary>
<br />
<b>Anmerkung: Um im Computerraum richtig debuggen zu können, muss Schritt 2 befolgt werden. Andernfalls erhält man eine Fehlermeldung beim Ausführen des Debuggers.</b>
<br /><br />
Für die Installation ist die Windows Eingabeaufforderung (Windows Terminal) ganz normal zu starten. (Wenn Terminal nicht gefunden wird, nach "cmd" suchen.<br /><br />
  
![cr_terminal](https://user-images.githubusercontent.com/100713757/197754867-00515001-4d1d-49ce-a25e-7a02ed615506.png)

Nun wird der folgende Code kopiert und im Terminal eingefügt und mit der ENTER-Taste ausgeführt:

```cmd
curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/VSCodeCR.cmd -o %temp%\VSCodeCR.cmd && %temp%\VSCodeCR.cmd && del %temp%\VSCodeCR.cmd && EXIT /B
```
  
Nun läuft die Installation von alleine und meldet euch, wenn es fertig ist.
![Screenshot (22)](https://user-images.githubusercontent.com/100713757/166149376-7700c166-11da-442f-a8ab-68e2da784fe9.png)

Bei der Meldung klicken wir auf <b>OK</b>, dass Terminal schließt nun automatisch und es erscheint ein Logfile, welches sich auf eurem Desktop befindet.
![Screenshot (23)](https://user-images.githubusercontent.com/100713757/166149506-b4171410-2132-45ac-af4d-1284638c1e3d.png)
  
Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin.
Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
  
### Schritt 2
Um im Computerraum debuggen zu können, ist es erforderlich, den Ordner direkt über den Netzlaufwerkverzeichnis zu öffnen.
Nach dem Start von VSCode klicken wir auf Open Folder.
  
![Screenshot (1)](https://user-images.githubusercontent.com/100713757/168243894-209938d6-c5b7-44e6-afa0-bb3072cfe8f6.png)

Dann gehen wir auf Dieser PC.
  
![Screenshot (2)](https://user-images.githubusercontent.com/100713757/168244010-46a3c191-c587-4af2-a8ac-e7da979685f2.png)

Und dort klicken wir auf den Netzlaufwerk mit dem Namen der eigenen Benutzerkennung.
  
![Screenshot (3)](https://user-images.githubusercontent.com/100713757/168244174-d539e84b-cf00-4eda-b1eb-8e517865720d.png)

Nun gehen wir noch auf Systemordner.
  
![Screenshot (4)](https://user-images.githubusercontent.com/100713757/168244323-6e0ecd94-6db6-4493-8fbc-8c06571460b2.png)
  
![Screenshot (6)](https://user-images.githubusercontent.com/100713757/168244473-e47306cd-3c71-4a78-a36d-3ad6ede3cdee.png)
  
Von hier aus können wir unseren Ordner dann auswählen und debuggen können.
  
Hiermit wäre die Installation auch schon fertig und VSCode ist nun im Computerraum nutzbar.
  
  
</details>

<!--Alte CR-Anleitung wird auskommentiert
<details>
  <summary>Hier klicken, um VSCode auf im Computerraum der Hochschule zu nutzen.</summary>
<br />
<b>Anmerkung: Um im Computerraum richtig debuggen zu können, muss Schritt 2 befolgt werden. Andernfalls erhält man eine Fehlermeldung beim Ausführen des Debuggers.</b>

### Schritt 1
<br />
<a href="https://github.com/hshf1/VorlesungC/files/8937057/installVSCodeCR.zip"><img src="https://img.shields.io/badge/Download-v1.04_20.06.2022-success?logo=windows" height="50" /></a>
<br /><br />
  
Die Datei im ZIP-Ordner entpacken wir, z.B. in Downloads oder Desktop.
![Screenshot (18)](https://user-images.githubusercontent.com/100713757/166149097-c7db2762-97ca-4e0d-8d5a-8b200b9b0154.png)
  
Mit einem linken Doppelklick starten wir einfach das Programm. Es kann die Meldung auftauchen, dass Windows den Computer schützt. Das kommt standardmäßig bei allen Batch-Dateien vor, die aus dem Internet runtergeladen werden. In diesem Fall klickt ihr auf weitere Informationen und anschließend auf den erscheinenden Button <b>Trotzdem ausführen</b>.
![Screenshot (20)_LI](https://user-images.githubusercontent.com/100713757/166149294-92720791-6f03-44db-af79-039775eeab98.jpg)
![Screenshot (21)_LI](https://user-images.githubusercontent.com/100713757/166149327-3bf6a5d3-277c-4748-bc6d-35f3116d4f44.jpg)

Nun läuft die Installation von alleine und meldet euch, wenn es fertig ist.
![Screenshot (22)](https://user-images.githubusercontent.com/100713757/166149376-7700c166-11da-442f-a8ab-68e2da784fe9.png)

Bei der Meldung klicken wir auf <b>OK</b>, dass Terminal schließt nun automatisch und es erscheint ein Logfile, welches sich auf eurem Desktop befindet.
![Screenshot (23)](https://user-images.githubusercontent.com/100713757/166149506-b4171410-2132-45ac-af4d-1284638c1e3d.png)
  
Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin.
Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
  
### Schritt 2
Um im Computerraum debuggen zu können, ist es erforderlich, den Ordner direkt über den Netzlaufwerkverzeichnis zu öffnen.
Nach dem Start von VSCode klicken wir auf Open Folder.
  
![Screenshot (1)](https://user-images.githubusercontent.com/100713757/168243894-209938d6-c5b7-44e6-afa0-bb3072cfe8f6.png)

Dann gehen wir auf Dieser PC.
  
![Screenshot (2)](https://user-images.githubusercontent.com/100713757/168244010-46a3c191-c587-4af2-a8ac-e7da979685f2.png)

Und dort klicken wir auf den Netzlaufwerk mit dem Namen der eigenen Benutzerkennung.
  
![Screenshot (3)](https://user-images.githubusercontent.com/100713757/168244174-d539e84b-cf00-4eda-b1eb-8e517865720d.png)

Nun gehen wir noch auf Systemordner.
  
![Screenshot (4)](https://user-images.githubusercontent.com/100713757/168244323-6e0ecd94-6db6-4493-8fbc-8c06571460b2.png)
  
![Screenshot (6)](https://user-images.githubusercontent.com/100713757/168244473-e47306cd-3c71-4a78-a36d-3ad6ede3cdee.png)
  
Von hier aus können wir unseren Ordner dann auswählen und debuggen können.
  
Hiermit wäre die Installation auch schon fertig und VSCode ist nun im Computerraum nutzbar.
</details>
Alte CR-Anleitung Ende Auskommentierung-->

<!--Ende Computerraum-Anleitung-->

<!--Ende Anleitung-->
