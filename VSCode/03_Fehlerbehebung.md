<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/01_vscode"><img src="https://img.shields.io/badge/VSCode-Q%26A-informational?logo=visualstudiocode" height="25"/></a>

# Fehlerbehebung

Einige Fehler können mit der Fehleranalyse aufgedeckt werden. Wie die Fehleranalyse ausgeführt wird, steht ebenfalls in der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md). Im LogFile stehen dann mögliche Fehler mit Fehlercodes, die hier näher beschrieben sind und zur Fehlerbehebung helfen. Dabei steht die erste Ziffer des Fehlercodes für das System -> 0*** sind Allgemeine Fehler, 1*** sind Fehler beim MacOS, 2*** sind Fehler beim Windows und 3*** sind Fehler beim Linux.

Zuallererst sollte bei einem Problem die Installations gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt werden. Es hilft auch, zuerst die Deinstallation auszuführen und dann erneut die Installation. Die Deinstallation ist ebenfalls in der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) erklärt.

:warning: Sollte keine LogFile erstellt werden und es taucht eine Fehlermeldung auf, bitte mit Windowsversion eine Mail schreiben.

Sollte das Problem weiterhin bestehen oder neu und hier nicht enthalten sein, so ist ein Screenshot der Fehlermeldung mit dem LogFile im Anhang an die lehrende Person zu mailen.

## <p align="center">Allgemeine Fehler</p>

<details>
<summary>Fehlercode: 0000 | Es konnte keine Verbindung zum Internet erkannt werden!</summary>
  
Ohne Internet wäre das Ausführen des Skriptes gar nicht möglich. Jedoch sollte überprüft werden, dass während der gesamten Ausführungszeit eine stabile Internetverbindung vorliegt.

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>File not found oder No such file or directory beim Debuggen</summary>

Heißt die Datei z. B. Prüfsumme.c? Irgendeiner der Ordner, in der sich die Datei schließlich befindet "Übung" oder "Neue Projekte"? Ist der Benutzername Ségolène? Es dürfen im Datei- und Ordnernamen keine Umlaute oder Leerzeichen befinden!

</details>
  
<details>
<summary>Virenscanner?</summary>
  
Bei der Installation, insbesondere dem Herunterladen und Installieren von Chocolatey können übereifrige Virenscanner Probleme machen.

Auch das Aufrufen des Compilers oder -noch öfter- des Debuggers kann Virenscanner irritieren.

Der hauseigene Virenscanner von Windows (Defender) ist bisher eher zurückhaltend, bekannt sind Problem mit AntiVir und McAfee.

In diesem Fall kann man das Anti-Virus Programm für einen kurzen Moment ausstellen und es so probieren. Beim Testen von Compiler und Debugger kann man die Internetverbindung vorher trennen.

</details>

## <p align="center">MacOS</p>

<details>
<summary>Fehlercode: 1000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1005 | Die Extension LiveShare konnte nicht gefunden werden! (Fehlercode: 1005)</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 1006 | Die Extension lldb konnte nicht gefunden werden!</summary>
  
TBD

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>xcrun: error: invalid active developer path... </summary>

Dann hat die Installation von xcode-select nicht geklappt. Manchmal "verschwindet" die Installation auch nach einem Update, z.B. des Betriebssystems.

Dies lässt sich im Terminal wie folgt beheben:

> xcode-select --install

</details>

## <p align="center">Windows</p>

<details>
<summary>Fehlercode: 2000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2005 | Die Extension LiveShare konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2006 | Das Terminal wurde nicht als Administrator gestartet!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 2007 | Choco konnte nicht gefunden werden!</summary>
  
TBD

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>Umlaute werden nicht richtig dargestellt</summary>

Nicht-ASCII-Zeichen sind nicht ganz einfach in den Griff zu bekommen, da dies nicht nur von VSCode abhängt.

Ein vielversprechender erster Versuch ist es am unteren rechten Rand des VSCode-Fensters das Encoding zu ändern.

Interessanterweise ist beim Ausführen des Programms (mittels Code Runner) oft CP437 und für den Debugger UTF-8 oder UTF-8 with BOM die richtige Wahl.

</details>

<details>
<summary>An existing Chocolatey installation was detected. Installation will not continue.
For security reasons, this script will not overwrite existing installations.</summary>

Eine unvollständige Installation von Chocolatey kann man mit folgendem Befehl im CMD Terminal mit Administrationsrechten entfernen:

> RMDIR /S /Q C:\ProgramData\chocolatey

</details>

<details>
<summary>Beim debuggen oder ausführen kommt die Fehlermeldung, a.exe wurde nicht gefunden.</summary>
  
Dieser Fehler lässt sich ganz einfach beheben, indem ihr die Installation gemäß der [Anleitung (https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt, ohne etwas zu deinstallieren.

</details>

<details>
<summary>Die Benennung "choco" wurde nicht als Name eines Cmdlet, einer Funktion, einer Skriptdatei oder eines ausführbaren Programms erkannt.</summary>

Entweder wurde chocolatey nicht installiert, das Ende der Installation wurde nicht abgewartet oder das CMD Terminal wurde nach der Installation nicht beendet. Einfach Terminal schließen und wieder als Administrator öffnen. Bleibt der Fehler, so lässt es sich ganz einfach beheben, indem ihr die Installation gemäß der [Anleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt, ohne etwas zu deinstallieren.

</details>

## <p align="center">Linux</p>

<details>
<summary>Fehlercode: 3000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3005 | Die Extension LiveShare konnte nicht gefunden werden! (Fehlercode: 1005)</summary>
  
TBD

</details>

<details>
<summary>Fehlercode: 3006 | Die Extension lldb konnte nicht gefunden werden!</summary>
  
TBD

</details>

<!--
### Die Idee ist es die github Suchfunktion für dieses Respository zu nutzen:

![githubSuche](https://user-images.githubusercontent.com/81232074/113470733-0f520b00-9458-11eb-9f0c-46f9ba9994a9.png)

<details>
<summary>"Running the contributed command :'extension.pickRemoteNativeProcess' failed"</summary>

[Problem mit dem Virenscanner](https://github.com/hshf1/cprog/blob/main/installation.md#virenscanner)

</details>
-->
