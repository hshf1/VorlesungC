# VSCode Installationsanleitung

Dies ist eine Anleitung (von Studenten für Studenten) zur Installation von VSCode für die Vorlesung C.<br />
Für die Installation ist es erforderlich, dass ihr über <b>Adminrechte</b> verfügt.<br />

Sollten während der Installation Probleme auftreten, schaut hier nach einer Lösung: [03_Fehlerbehebung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md). <br />
Ist euer Problem dort nicht geschildert oder dennoch nicht behoben, so schickt ihr bitte eine E-Mail mit einem Screenshot der Fehlermeldung und der Angabe eures genutzten Betriebssystems an den/die vom Prof. benannte/n Betreuer/in dieser Anleitung.

## MacOS

<details>
<summary>Hier klicken, um VSCode auf dem MacOS zu installieren.</summary>  

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
  
Um die Einstellungen überall zu haben, egal wo wir die Programme speichern und von anfang an überall debuggen können, laden wir zuerst den ZIP-Ordner herunter: [SettingsMAC.zip](https://github.com/hshf1/VorlesungC/files/8366561/SettingsMAC.zip)

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
  
<details>
<summary>Hier klicken, falls VSCode schon installiert ist.</summary>
  
Das ist kein Problem, dann führe die oben beschriebene Installation ohne Schritt 2 durch.

</details>
  
  <details>
  <summary>Hier klicken, um bei Fehler VSCode zu deinstallieren und neu zu installieren.</summary>
Falls bei der Installation oder der anschließenden Nutzung von VSCode fehler auftreten, so könnt ihr VSCode deinstallieren 
und wieder anhand der oberen Anleitung neu installieren. Wie Programme auf einem MacOS deinstalliert/gelöscht werden, ist hier erklärt:
https://support.apple.com/de-de/HT202235
    
  </details>

## Windows
  
<details> 
<summary>Hier klicken, um VSCode auf dem Windows zu installieren.</summary> 
  
### Schritt 1

Wir laden den ZIP-Ordner hier runter:
[installChoco.zip](https://github.com/hshf1/VorlesungC/files/8498836/installChoco.zip)

Die Datei im ZIP-Ordner entpacken wir direkt in den Downloadsordner und lassen es da. Es darf nicht in einem weiteren Ordner sein!

### Schritt 2
Wir öffnen die Eingabeaufforderung als Administrator.
  
![Schritt 2 CMD](https://user-images.githubusercontent.com/100713757/159831542-2f08c9b7-ef1c-4feb-a8a8-435d69435238.jpg)

Nun kopieren wir die folgende Zeile in das Terminal, bestätigen mit Enter und warten wieder auf den Eingabeprompt.
  
> cd %USERPROFILE%\Downloads & installChoco.cmd
  
![Schritt 2 Code](https://user-images.githubusercontent.com/100713757/159831925-92e8b154-19cc-4aec-b434-c62facb4813f.png)

Dieses Mal kann das ein paar Minuten dauern, wir warten einfach, bis der neue Eingabepromt zu sehen ist.

![Schritt 2 Ende](https://user-images.githubusercontent.com/100713757/159840845-0ed0b1a5-feb6-4bdf-84c7-316d3cf0072e.png)

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
  
  <details> 
<summary>Alternative Installation, falls die empfohlene Anleitung oben nicht funktioniert.</summary> 
    
Dies ist eine alternative Möglichkeit, VSCode auf Windows zu installieren und sollte nur genutzt werden, wenn die empfohlene Anleitung ein Stück weiter oben nicht funktioniert.
  
### Schritt 1
Zunächst rechts-klicken wir auf das Windows-Icon und wählen im erscheinenden Menü „Windows PowerShell (Administrator)“:

<img width="276" alt="image" src="https://user-images.githubusercontent.com/78163337/111452622-000e5600-8713-11eb-9c34-0cbfdfcc411c.png">
  
In diese PowerShell kopieren wir am Stück folgende Zeile:

und bestätigen mit „Enter“ und warten solange, bis uns PowerShell einen frischen Eingabeprompt anbietet:

<img width="163" alt="image" src="https://user-images.githubusercontent.com/78163337/111456918-d9065300-8717-11eb-93a9-88fddd8459ff.png">

### Schritt 2
Nun schließen wir die PowerShell und öffnen es wie vorhin erneut mit Adminrechten.
Nun kopieren wir die folgende Zeile in die PowerShell, bestätigen mit Enter und warten wieder auf den Eingabeprompt.

> choco install mingw --version=8.1.0 -y

### Schritt 3
Wir schließen die PowerShell und öffnen es wie vorhin erneut mit Adminrechten.
Jetzt kopieren wir die folgende Zeile in die PowerShell, bestätigen mit Enter und warten wieder auf den Eingabepromt.

> choco install vscode vscode-cpptools vscode-vsliveshare vscode-code-runner vscode-gitlens git cascadiafonts python -y

Dieses Mal kann das ein paar Minütchen dauern, wir warten einfach, bis der neue Eingabepromt zu sehen ist.<br />

Hiermit wäre die Installation auch schon fertig und wir können mit [Erste Schritte](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Erste_Schritte.md) weiter machen.
</details>
  
## Computerraum an der Hochschule
<details>
  <summary>VSCode im Computerraum der Hochschule nutzen</summary>
</details>
