# Fehlerbehebung (in Bearbeitung)

Dies ist eine Sammlung bekannter Fehlermeldungen.
Solltest du keine Lösung zu deinem Problem finden, so schick bitte eine E-Mail mit einem Screenshot der Fehlermeldung und der Angabe eures genutzten Betriebssystems an den/die vom Prof. benannte/n Betreuer/in dieser Anleitung.

### Die Idee ist es die github Suchfunktion für dieses Respository zu nutzen:

![githubSuche](https://user-images.githubusercontent.com/81232074/113470733-0f520b00-9458-11eb-9f0c-46f9ba9994a9.png)


<details>
<summary>Umlaute werden nicht richtig dargestellt.</summary>

Nicht-ASCII-Zeichen sind nicht ganz einfach in den Griff zu bekommen, da dies nicht nur von VSCode abhängt.

Ein vielversprechender erster Versuch ist es am unteren rechten Rand des VSCode-Fensters das Encoding zu ändern.

Interessanterweise ist beim Ausführen des Programms (mittels Code Runner) oft CP437 und für den Debugger UTF-8 oder UTF-8 with BOM die richtige Wahl.

</details>


<details>
<summary>"Running the contributed command :'extension.pickRemoteNativeProcess' failed"</summary>

[Problem mit dem Virenscanner](https://github.com/hshf1/cprog/blob/main/installation.md#virenscanner)

</details>


Mehr Lösungshinweise gibt es in der [Troubleshooting Sektion](https://github.com/hshf1/cprog/blob/main/installation.md#troubleshooting) der Installationsanleitung.

## Allgemein

### Sonder- oder Leerzeichen irgendwo im Pfad?

Insbesondere, aber nicht nur, bei den Fehlermeldungen

#### File not found

oder

#### No such file or directory

sollte man dies nochmal genau überprüfen.

  Heißt die Datei z. B. Prüfsumme.c?
  Irgendeiner der Ordner, in der sich die Datei schließlich befindet "Übung" oder "Neue Projekte"?
  Ist der Benutzername Ségolène?
  
### .vscode-Ordner nicht im "obersten" geöffneten Ordner?
  
  Der erste geöffnete Ordner in VSCode muss einen Ordner .vscode enthalten, der wiederum die Dateien launch.json, settings.json und tasks.json enthalten muss. Diesen .vscode-Ordner solltet ihr bei euch im Ordner "vscodeforc" finden und könnt ihn gerne kopieren und mehrfach verwenden. 
  
### Virenscanner?

Bei der Installation, insbesondere dem Herunterladen und Installieren von Chocolatey können übereifrige Virenscanner Probleme machen.

Auch das Aufrufen des Compilers oder -noch öfter- des Debuggers kann Virenscanner irritieren.

Der hauseigene Virenscanner von Windows (Defender) ist bisher eher zurückhaltend, bekannt sind Problem mit AntiVir und McAfee.

In diesem Fall kann man das Anti-Virus Programm für einen kurzen Moment ausstellen und es so probieren. Beim Testen von Compiler und Debugger kann man die Internetverbindung vorher trennen.

## MacOS

### XCRUN
<details>
<summary>xcrun: error: invalid active developer path... </summary>

Dann hat die Installation von xcode-select nicht geklappt. Manchmal "verschwindet" die Installation auch nach einem Update, z.B. des Betriebssystems.

Dies lässt sich im Terminal wie folgt beheben:

> xcode-select --install

</details>

### GitLens
<details>
<summary>"GitLens was unable to find Git. Please make sure Git is installed. Also ensure that Git is either in the PATH, or that 'git.path' is pointed to its installed location."</summary>

Dann hat vermutlich die Installation von xcode-select nicht geklappt. Manchmal "verschwindet" die Installation auch nach einem Update, z.B. des Betriebssystems.

Dies lässt sich im Terminal wie folgt beheben:

> xcode-select --install

</details>

## Windows

### Choco
<details>
<summary>Die Benennung "choco" wurde nicht als Name eines Cmdlet, einer Funktion, einer Skriptdatei oder eines ausführbaren Programms erkannt.</summary>

Entweder wurde chocolatey nicht installiert, das Ende der Installation wurde nicht abgewartet oder die PowerShell Sitzung wurde nach der Installation nicht beendet.

Also einmal PowerShell beenden und (wieder als Administrator) neu öffnen. Wenn das nicht hilft den vorherigen Schritt wiederholen.

</details>

### Existing Chocolatey installation
<details>
<summary>An existing Chocolatey installation was detected. Installation will not continue.
For security reasons, this script will not overwrite existing installations.</summary>


Eine unvollständige Installation von Chocolatey kann man mit folgendem Befehl entfernen:

> Remove-Item C:\ProgramData\chocolatey -Recurse

</details>
