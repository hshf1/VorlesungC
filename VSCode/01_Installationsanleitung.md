# VSCode Installationsanleitung

Dies ist eine Anleitung (von Studenten für Studenten) zur Installation von VSCode für die Vorlesung C.<br />
Für die Installation ist es erforderlich, dass ihr über <b>Adminrechte</b> verfügt.<br />

Sollten während der Installation Probleme auftreten, schaut hier nach einer Lösung: [03_Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md). <br />
Ist euer Problem dort nicht geschildert oder dennoch nicht behoben, so schickt ihr bitte eine E-Mail mit der Logfile im Anhang an den/die vom Prof. benannte/n Betreuer/in dieser Anleitung.

## MacOS

<details>
  <summary>Hier klicken, um VSCode auf dem MacOS zu installieren.</summary>

### Schritt 1
Wir laden VSCode für Mac herunter, indem wir auf den folgenden Link klicken:
https://code.visualstudio.com/docs?dv=osx

Danach schieben wir im Finder einfach die Datei `<Visual Studio Code.app>` in den `<Programme>` Ordner. 
  
### Schritt 2
  
Ladet die folgende Datei herunter: [installVSCode.sh.zip](https://github.com/hshf1/VorlesungC/files/8517147/installVSCode.sh.zip)

Die Datei aus diesem ZIP-Ordner schiebt ihr auf euren Schreibtisch (Desktop). <br />
<img width="401" alt="Bildschirmfoto 2022-04-17 um 05 35 45" src="https://user-images.githubusercontent.com/100713757/163699203-aff40972-d3a1-4212-ad96-71e6606950f9.png"> <br />
  
Nun öffnet ihr das Terminal <br />
<img width="566" alt="Bildschirmfoto 2022-04-17 um 05 31 43" src="https://user-images.githubusercontent.com/100713757/163699216-b1eb7dd1-ffce-4bcd-be21-1691adaf0c6b.png">
  
und gebt folgendes ein:
  
> sh ~/Desktop/installVSCode.sh
  
<img width="561" alt="Bildschirmfoto 2022-04-17 um 05 38 53" src="https://user-images.githubusercontent.com/100713757/163699298-7f71c5ab-07f6-43cd-857b-e3eb61dab502.png">

Nun werdet ihr nach eurem Passwort gefragt. <br />

<img width="561" alt="Bildschirmfoto 2022-04-17 um 05 38 59" src="https://user-images.githubusercontent.com/100713757/163699305-1b6cf156-158f-4c7c-880f-c51858000e5e.png">
  
Gebt das Passwort ein, dass ihr auch für die Anmeldung am Laptop nutzt und drückt auf Enter auf der Tastatur.
  
Am Ende sollte dann Installation beendet erscheinen. <br />
<img width="750" alt="Bildschirmfoto 2022-04-17 um 05 33 50" src="https://user-images.githubusercontent.com/100713757/163699227-a2bf91bd-3c4f-42d6-a16b-a7946f22f5c9.png">

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.

  </details>
  
<details>
<summary>Hier klicken, falls VSCode schon installiert ist.</summary>
  
Das ist kein Problem, dann führe bei der oben beschriebene Installation nur Schritt 2 durch.

</details>
  
  <details>
  <summary>Hier klicken, um bei Fehler VSCode zu deinstallieren und neu zu installieren.</summary>
Falls bei der Installation oder der anschließenden Nutzung von VSCode fehler auftreten, so könnt ihr VSCode deinstallieren 
und wieder anhand der oberen Anleitung neu installieren. Wie Programme auf einem MacOS deinstalliert/gelöscht werden, ist hier erklärt:
https://support.apple.com/de-de/HT202235
    
  </details>
  
  <details>
<summary>Alternative MacOS Installation, falls die empfohlene Anleitung oben nicht funktioniert.</summary>  

### Schritt 1
Damit wir mit Visual Studio Code C programmieren können, brauchen wir einen Compiler und Debugger. 

Dazu öffnen wir den Terminal und überprüfen, ob dies bereits vorhanden ist, indem wir
> clang –version

im Terminal eingeben. Bekommen wir eine Versionsnummer angezeigt, können wir mit Schritt 2 weiter machen. Bekommen wir aber 
mit der Abfrage keine Versionsnummer angezeit, so geben wir im Terminal
> Xcode-select –install

ein und überprüfen das Ergebnis wieder mit 
> clang –version

Nun sollte eine Versionsnummer angezeigt werden und wir können mit Schritt 2 weiter machen.

### Schritt 2
Wir laden VSCode für Mac herunter, indem wir auf den folgenden Link klicken:
https://code.visualstudio.com/docs?dv=osx

Danach schieben wir im Finder einfach die Datei `<Visual Studio Code.app>` in den `<Programme>` Ordner. 

### Schritt 3
Wir öffnen als nächstes Visual Studio Code.<br />

Nun installieren wir einige Erweiterungen, in dem wir auf das Symbol mit 3+1 Quadraten auf der linken Seite klicken:

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Wir möchten die vier Extensions C/C++, Code Runner, Live Share und GitLens. Oft gibt es eine reguläre, stabile und eine Vorab-Test-Version. Man kann sich an den Downloadzahlen aus den folgenden Screenshots orientieren, um die stabile Version zu erwischen:

![image](https://user-images.githubusercontent.com/78163337/112048686-f50e5800-8b4e-11eb-871f-51418cd4aaf6.png)

![image](https://user-images.githubusercontent.com/78163337/112048709-fb9ccf80-8b4e-11eb-8c6b-92e817526a56.png)

![image](https://user-images.githubusercontent.com/78163337/112048726-00618380-8b4f-11eb-84c5-c4ed73dc9d22.png)
  
![image](https://user-images.githubusercontent.com/100713757/159911055-cba05f87-f11f-402c-bec2-1551c6098574.png)
  
### Schritt 4
  
Um die Einstellungen überall zu haben, egal wo wir die Programme speichern und von anfang an überall debuggen können, laden wir zuerst den ZIP-Ordner herunter: [SettingsMAC.zip](https://github.com/hshf1/VorlesungC/files/8498985/SettingsMAC.zip)

Nun gehe wir im Finder auf Gehe zu und gehen da auf Gehe zum Ordner.
  
![image](https://user-images.githubusercontent.com/100713757/160494364-ae34d538-8420-4e91-b3d8-b47f8dd8bf89.png)

In der Suchleichte geben wir folgende Adresse ein: 
ACHTUNG: [Platzhalter] müsst ihr zusammen mit den eckigen Klammern nach eurem Benutzernamen auf dem MacOS umbennenen. 

>  /Users/[Platzhalter]/Library/Application Support/Code/User
  
In meinem Fall ist mein Benutzername ck und sieht wie folgt dann aus:
  
![image](https://user-images.githubusercontent.com/100713757/160494625-2aace6a3-2697-4d48-8494-5722c8affd83.png)
  
In den geöffneten Ordner kopiert ihr nun die 3 Dateien aus dem aus Schritt 1 runtergeladenen ZIP-Ordner. Falls da schon Dateien mit dem selben Namen vorhanden sind, ersetzt diese einfach.
  
Nun sollten die 3 Dateien sich in diesem Ordner befinden.
  
![image](https://user-images.githubusercontent.com/100713757/160494882-73fbd31a-1ba8-4774-b266-010bd286027e.png)
  
Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.
  </details>

## Windows
<b>Aktuelle Version: V1.02 01.05.2022</b>
    
<details> 
<summary>Hier klicken, um VSCode auf dem Windows zu installieren.</summary> 

Wir laden den ZIP-Ordner hier runter: 
[installVSCode.zip](https://github.com/hshf1/VorlesungC/files/8599124/installVSCode.zip)

Die Datei im ZIP-Ordner entpacken wir, z.B. in Downloads oder Desktop.
![Screenshot (18)](https://user-images.githubusercontent.com/100713757/166149097-c7db2762-97ca-4e0d-8d5a-8b200b9b0154.png)
  
Mit einem rechtsklick starten wir die Datei mit Administrationsrechten.
![Screenshot (19)_LI](https://user-images.githubusercontent.com/100713757/166149297-687bde95-dcd8-4953-a427-0f4aa85b07bf.jpg)

Es kann die Meldung auftauchen, dass Windows den Computer schützt. Das kommt standardmäßig bei allen Batch-Dateien vor, die aus dem Internet runtergeladen werden. In diesem Fall klickt ihr auf weitere Informationen und anschließend auf den erscheinenden Button <b>Trotzdem ausführen</b>.
![Screenshot (20)_LI](https://user-images.githubusercontent.com/100713757/166149294-92720791-6f03-44db-af79-039775eeab98.jpg)
![Screenshot (21)_LI](https://user-images.githubusercontent.com/100713757/166149327-3bf6a5d3-277c-4748-bc6d-35f3116d4f44.jpg)

Nun läuft die Installation von alleine und meldet euch, wenn es fertig ist.
![Screenshot (22)](https://user-images.githubusercontent.com/100713757/166149376-7700c166-11da-442f-a8ab-68e2da784fe9.png)

Bei der Meldung klicken wir auf <b>OK</b>, dass Terminal schließt nun automatisch und es erscheint ein Logfile, welches sich auf eurem Desktop befindet.
![Screenshot (23)](https://user-images.githubusercontent.com/100713757/166149506-b4171410-2132-45ac-af4d-1284638c1e3d.png)
  
Ist kein Fehler aufgetreten könnt ihr die Logfile auch wieder löschen. Sollten Probleme oder Fehler auftauchen, stehen diese da drin.
Zur Problembehandlung könnt ihr im Logfile sehen, was nicht geklappt hat. Solltet ihr das Problem nicht beheben können, schickt bitte die Logfile mit als Anhang.
  
Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.
</details>      
    
<details>
<summary>Hier klicken, falls VSCode schon installiert ist.</summary>
  
Das ist kein Problem, führe die oben beschriebene Installationsanleitung einfach ganz normal durch.<br />
Bereits installierte Programme bleiben erhalten und nur fehlende dazu installiert.

</details>
  <details>
  <summary>Hier klicken, um bei Fehler VSCode zu deinstallieren und neu zu installieren.</summary>
Falls bei der Installation oder der anschließenden Nutzung von VSCode fehler auftreten, so könnt ihr es komplett deinstallieren und wieder anhand der oberen Anleitung neu installieren.
<br /><br />
Dafür müsst ihr diese Programme deinstallieren:

![Deinstallation](https://user-images.githubusercontent.com/100713757/159841162-32f5c2e6-24e2-4f33-a9a5-d7a18cd034ac.png)

    
Zum Schluss starten wir noch die Eingabeaufforderung (CMD) mit Adminrechten und geben folgenden Code ein:
> RMDIR /S /Q C:\ProgramData\chocolatey
    
Nun ist alles deinstalliert und gelöscht und es kann mit der Installation wieder von vorne begonnen werden.
    
  </details>
  
## Computerraum an der Hochschule

<details>
  <summary>Hier klicken, um VSCode auf im Computerraum der Hochschule zu nutzen.</summary>

### Schritt 1

Wir laden den ZIP-Ordner hier runter:
[installVSCodeCR.zip](https://github.com/hshf1/VorlesungC/files/8538663/installVSCodeCR.zip)

Die Datei im ZIP-Ordner schieben wir in den Downloadsordner oder auf den Desktop und starten die Datei von dort aus.
![Schritt 1](https://user-images.githubusercontent.com/100713757/163715189-8d3b902b-be32-405e-8b38-47a029ef3ab3.png)

### Schritt 2
Nun starten wir VSCode und öffnen einen Ordner. Um den debugger nutzen zu können, muss du mit VSCode den Ordner direkt über das Netzlaufwerk mit deiner Kennung öffnen.

Hiermit wäre die Installation auch schon fertig und VSCode ist nun im Computerraum nutzbar.
</details>

<!-- <details> 
<summary>Hier klicken, um VSCode auf im Computerraum der Hochschule zu nutzen.</summary> 
    
Solltet ihr bei der Installation Probleme aufgrund eures Virenscanners oder durch Windows Defender haben, so könnt ihr die alternative Installation weiter unten nutzen.
  
Ladet folgende Datei herunter und entpackt es: [installVSCodeCR.zip](https://github.com/hshf1/VorlesungC/files/8538657/installVSCodeCR.zip) <br />
Nun startet ihr das Programm und folgt den Befehlen. 

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Erste_Schritte.md) weiter machen.
</details> -->
    
<!--  <details> 
<summary>Hier klicken, um VSCode auf dem Windows zu installieren.</summary> 
    
Solltet ihr bei der Installation Probleme aufgrund eures Virenscanners oder durch Windows Defender haben, so könnt ihr die alternative Installation weiter untern nutzen.
  
Ladet folgende Datei herunter und entpackt es: [installVSCode.zip](https://github.com/hshf1/VorlesungC/files/8517029/installVSCode.zip) <br />
Nun startet ihr das Programm als Administrator und folgt den Befehlen. 

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Erste_Schritte.md) weiter machen.
</details>
--->
    
<!-- <details> 
<summary>Alternative Windows Installation, falls die empfohlene Anleitung oben nicht funktioniert.</summary> 
  
### Schritt 1

Wir laden den ZIP-Ordner hier runter:
[installVSCode.zip](https://github.com/hshf1/VorlesungC/files/8517088/installVSCode.zip)

Die Datei im ZIP-Ordner entpacken wir direkt in den Downloadsordner und lassen es da. Es darf nicht in einem weiteren Ordner sein!
![Schritt 1](https://user-images.githubusercontent.com/100713757/163715189-8d3b902b-be32-405e-8b38-47a029ef3ab3.png)

### Schritt 2
Wir öffnen die Eingabeaufforderung als Administrator.
  
![Schritt 2 CMD](https://user-images.githubusercontent.com/100713757/159831542-2f08c9b7-ef1c-4feb-a8a8-435d69435238.jpg)

Nun kopieren wir die folgende Zeile in das Terminal, bestätigen mit Enter und warten wieder auf den Eingabeprompt.
  
> cd %USERPROFILE%\Downloads & installVSCode.cmd
  
![Schritt 2 Code](https://user-images.githubusercontent.com/100713757/159831925-92e8b154-19cc-4aec-b434-c62facb4813f.png)

Dieses Mal kann das ein paar Minuten dauern. Sobald die Installation fertig ist, wird sich das Terminal nach 5 Sekunden selbst schließen.

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/02_Erste_Schritte.md) weiter machen.
</details>  
--> 
