<a href="https://github.com/hshf1/VorlesungC/discussions"><img src="https://img.shields.io/badge/Allgemein-Q%26A-informational?logo=github" height="25"/></a>
<a href="https://github.com/hshf1/VorlesungC/discussions/categories/01_vscode"><img src="https://img.shields.io/badge/VSCode-Q%26A-informational?logo=visualstudiocode" height="25"/></a>

# Fehlerbehebung

Einige Fehler können mit der Fehleranalyse aufgedeckt werden. Wie die Fehleranalyse ausgeführt wird, steht ebenfalls in der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md). Im LogFile stehen dann mögliche Fehler mit Fehlercodes, die hier näher beschrieben sind und zur Fehlerbehebung helfen. Dabei steht die erste Ziffer des Fehlercodes für das System -> 0*** sind Allgemeine Fehler, 1*** sind Fehler beim MacOS, 2*** sind Fehler beim Windows und 3*** sind Fehler beim Linux.

:information_source: Zuallererst sollte bei einem Problem die Installations gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt werden. Es hilft auch, zuerst :information_source: die Deinstallation auszuführen und dann erneut die Installation. Die Deinstallation ist ebenfalls in der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) erklärt.

:warning: Sollte keine LogFile erstellt werden und es taucht eine Fehlermeldung auf, bitte mit Windowsversion eine Mail schreiben.

Sollte das Problem weiterhin bestehen oder neu und hier nicht enthalten sein, so ist ein Screenshot der Fehlermeldung mit dem LogFile im Anhang an die lehrende Person zu mailen.

:warning: Sehr oft gibt es Probleme mit dem Debugger! Dies liegt daran das vergessen wird, einen Ordner in VSCode zu öffnen. Dateien, die einzeln in VSCode geöffnet werden, können nicht debugged werden. Dafür sollte auch zur Hilfe eine Verknüpfung auf dem Desktop (Windows und MacOS, kein Linux) bei der Installation erstellt worden sein. Dadurch öffnet sich automatisch ein Ordner. Auch gibt es die meisten Probleme, wenn Umlaute oder Leerzeichen im Dateinamen oder in irgendeinem Ordnernamen (gesamter Verzeichnis bis zur Datei) enthalten ist.

## ℹ️ Installation von choco oder vom compiler nicht möglich

In einzelfällen kommt es vor, dass sich choco nicht installieren lässt oder wenn es dann doch installiert ist, dann lässt sich der Compiler nicht installieren. Auch kann es vorkommen, dass choco ggf. sagt, dass mingw bereits installiert ist. Das kann dennoch manuell im CMD (Terminal) installiert werden. Falls choco bereits installiert ist, dann direkt den Compiler installieren.

<details>
  <summary>Hier klicken um choco zu installieren</summary>
  In der Kommandozeile (CMD/Terminal) folgenden Code eingeben und installieren: <br />
  Achtung: Längerer Code, am besten auf die Kopierfunktion am rechten Rand des Codes klicken. <br />
  
  ```cmd
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

</details>

<details>
  <summary>Hier klicken um mingw (Compiler) zu installieren</summary>
  In der Kommandozeile (CMD/Terminal) folgenden Code eingeben und installieren: <br />

  ```cmd
choco install mingw --version=8.1.0 -y -f
```

</details>


## <p align="center">Allgemeine Fehler</p>

<details>
<summary>Fehlercode: 0000 | Es konnte keine Verbindung zum Internet erkannt werden!</summary>

-----------------------------------------------------------------------------------------------------

Ohne Internet wäre das Ausführen des Skriptes gar nicht möglich. Jedoch sollte darauf geachtet werden, dass während der gesamten Ausführungszeit eine stabile Internetverbindung vorliegt.

-----------------------------------------------------------------------------------------------------

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>File not found oder No such file or directory beim Debuggen</summary>

-----------------------------------------------------------------------------------------------------

Heißt die Datei z. B. Prüfsumme.c? Irgendeiner der Ordner, in der sich die Datei schließlich befindet "Übung" oder "Neue Projekte"? Ist der Benutzername Ségolène? Es dürfen im Datei- und Ordnernamen keine Umlaute oder Leerzeichen befinden!

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Virenscanner | "Running the contributed command :'extension.pickRemoteNativeProcess' failed"</summary>

-----------------------------------------------------------------------------------------------------

Bei der Installation, insbesondere dem Herunterladen und Installieren von Chocolatey können übereifrige Virenscanner Probleme machen.

Auch das Aufrufen des Compilers oder -noch öfter- des Debuggers kann Virenscanner irritieren.

Der hauseigene Virenscanner von Windows (Defender) ist bisher eher zurückhaltend, bekannt sind Problem mit AntiVir und McAfee.

In diesem Fall kann man das Anti-Virus Programm für einen kurzen Moment ausstellen und es so probieren. Beim Testen von Compiler und Debugger kann man die Internetverbindung vorher trennen.

-----------------------------------------------------------------------------------------------------

</details>

## <p align="center">MacOS</p>

<details>
<summary>Fehlercode: 1000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Befinden sich die *.json-Dateien nicht in <b>~/Library/Application\ Support/Code/User</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Diese sollten während der Installation dort erstellt werden.<br />
<br />
Sollte es mit der Installation dennoch nicht erstellt werden, so gibt es 2 Möglichkeiten:

<details>
<summary>*.json-Dateien automatisch erstellen</summary>
  
Um die *.json-Dateien automatisch zu erstellen, ist das Terminal zu starten und die folgenden Codezeilen aus der Installation einzeln auszuführen.<br />
Für die settings.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/settings.json
```
Für die launch.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/Library/Application\ Support/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/launch.json
```
Für die tasks.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/Library/Application\ Support/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/tasks.json
```
  
</details>
<details>
<summary>*.json-Dateien manuell erstellen</summary>

Um die *.json-Dateien manuell zu erstellen, ist zuerst das Verzeichnis <b>~/Library/Application\ Support/Code/User</b> zu öffnen. Sollte das Verzeichnis noch nicht vorhanden, muss das erstellt werden. Dieses Verzeichnis wird aber auch automatisch erstellt, sobald VSCode geöffnet wird.
  <br />
Dann sind 3 neue Text-Dateien dort zu erstellen. Diese sind so zu benennen, wie hier geschrieben. Schreibfehler führen dazu, dass die Dateien nicht erkannt werden. Die Dateiendungen müssen unbedingt *.json sein und nicht *.txt oder anderes.
  <br />
Für die settings.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/MacOS/settings.json) einzufügen und zu speichern.
  
Für die launch.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/MacOS/launch.json) einzufügen und zu speichern.
  
Für die tasks.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/MacOS/tasks.json) einzufügen und zu speichern.

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt <b>VSCode</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. VSCode sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

Um <b>VSCode</b> zu installieren, ist das Terminal zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
```
Nachdem der Download beendet wurde ist folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
unzip ~/Downloads/vsc.zip -d /Applications
```
War das erfolgreich kann die ZIP-Datei manuell im Downloads-Ordner gelöscht werden oder die folgende Codezeile wird im Terminal eingefügt und mit der Enter-Taste ausgeführt:
```sh
rm -R ~/Downloads/vsc.zip
```

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt der <b>Compiler</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Der Compiler sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

Um den <b>Compiler</b> zu installieren, ist das Terminal zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
command xcode-select --install
```
  
-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>Code-Runner</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension Code-Runner automatisch installieren</summary>

Um die VSCode Extension <b>Code-Runner</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension formulahendry.code-runner
```
  
</details>
<details>
<summary>VSCode Extension Code-Runner manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>Code-Runner</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 37 45" src="https://user-images.githubusercontent.com/100713757/203163145-23d2a7a9-7d91-404b-99de-8cc5f84a0312.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>C/C++</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension C/C++ automatisch installieren</summary>
  
Um die VSCode Extension <b>C/C++</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension ms-vscode.cpptools
```
  
</details>
<details>
<summary>VSCode Extension C/C++ manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>C/C++</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 28 09" src="https://user-images.githubusercontent.com/100713757/203161578-c56ff44f-09e7-4b91-a6bb-48c371701d56.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1005 | Die Extension LiveShare konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt die VSCode Extension <b>LiveShare</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension LiveShare automatisch installieren</summary>
  
Um die VSCode Extension <b>LiveShare</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension ms-vsliveshare.vsliveshare-pack
```
  
</details>
<details>
<summary>VSCode Extension LiveShare manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>LiveShare</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 25 26" src="https://user-images.githubusercontent.com/100713757/203161129-69856ae6-097d-4dba-9671-ee98d09480b9.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 1006 | Die Extension lldb konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt die VSCode Extension <b>lldb</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension lldb automatisch installieren</summary>
  
Um die VSCode Extension lldb zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension vadimcn.vscode-lldb
```
  
</details>
<details>
<summary>VSCode Extension lldb manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>lldb</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 19 49" src="https://user-images.githubusercontent.com/100713757/203160275-164fbe82-000f-4e91-aea5-f81192e165f9.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>xcrun: error: invalid active developer path... </summary>

-----------------------------------------------------------------------------------------------------

Dann hat die Installation von xcode-select nicht geklappt. Manchmal "verschwindet" die Installation auch nach einem Update, z.B. des Betriebssystems.

Dies lässt sich im Terminal wie folgt beheben:

> xcode-select --install

-----------------------------------------------------------------------------------------------------

</details>

## <p align="center">Windows</p>

<details>
<summary>Fehlercode: 2000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Befinden sich die *.json-Dateien nicht in <b>%APPDATA%\Code\User</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Diese sollten während der Installation dort erstellt werden.<br />
<br />
Sollte es mit der Installation dennoch nicht erstellt werden, so gibt es 2 Möglichkeiten:

<details>
<summary>*.json-Dateien automatisch erstellen</summary>
  
Um die *.json-Dateien automatisch zu erstellen, ist das Terminal zu starten und die folgenden Codezeilen aus der Installation einzeln auszuführen.<br />
Für die settings.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o %APPDATA%\Code\User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/settings.json
```
Für die launch.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o %APPDATA%\Code\User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/launch.json
```
Für die tasks.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o %APPDATA%\Code\User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/tasks.json
```
  
</details>
<details>
<summary>*.json-Dateien manuell erstellen</summary>

Um die *.json-Dateien manuell zu erstellen, ist zuerst das Verzeichnis <b>%APPDATA%\Code\User</b> zu öffnen. Sollte das Verzeichnis noch nicht vorhanden, muss das erstellt werden. Dieses Verzeichnis wird aber auch automatisch erstellt, sobald VSCode geöffnet wird.
  <br />
Dann sind 3 neue Text-Dateien dort zu erstellen. Diese sind so zu benennen, wie hier geschrieben. Schreibfehler führen dazu, dass die Dateien nicht erkannt werden. Die Dateiendungen müssen unbedingt *.json sein und nicht *.txt oder anderes.
<br />
Für die settings.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Windows/settings.json) einzufügen und zu speichern.
  
Für die launch.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Windows/launch.json) einzufügen und zu speichern.
  
Für die tasks.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Windows/tasks.json) einzufügen und zu speichern.

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt <b>VSCode</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. VSCode sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

:warning: Für die Installation von VSCode muss das Terminal als Administrator ausgeführt werden! Außerdem muss Choco bereits installiert worden sein!

![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

Um <b>VSCode</b> zu installieren, ist das Terminal als Administrator zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```cmd
choco install vscode -y
```

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt der <b>Compiler</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Der Compiler sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

:warning: Für die Installation vom Compiler muss das Terminal als Administrator ausgeführt werden! Außerdem muss Choco bereits installiert worden sein!

![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

Um den <b>Compiler</b> zu installieren, ist das Terminal als Administrator zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```cmd
choco install mingw --version=8.1.0 -y
```

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>Code-Runner</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension Code-Runner automatisch installieren</summary>

Um die VSCode Extension <b>Code-Runner</b> zu installieren, ist das Terminal zu starten und der folgende Code ins Terminal einzufügen und mit der ENTER-Taste auszuführen:
```cmd
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension formulahendry.code-runner
```

</details>
<details>
<summary>VSCode Extension Code-Runner manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>Code-Runner</b> reingeschrieben werden. Unter den Extensions ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.

Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:

<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 37 45" src="https://user-images.githubusercontent.com/100713757/203163145-23d2a7a9-7d91-404b-99de-8cc5f84a0312.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>C/C++</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension C/C++ automatisch installieren</summary>

Um die VSCode Extension <b>C/C++</b> zu installieren, ist das Terminal zu starten und der folgende Code ins Terminal einzufügen und mit der ENTER-Taste auszuführen:
```cmd
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vscode.cpptools
```

</details>
<details>
<summary>VSCode Extension C/C++ manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>C/C++</b> reingeschrieben werden. Unter den Extensions ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.

Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:

<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 28 09" src="https://user-images.githubusercontent.com/100713757/203161578-c56ff44f-09e7-4b91-a6bb-48c371701d56.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2005 | Die Extension LiveShare konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>LiveShare</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension LiveShare automatisch installieren</summary>
  
Um die VSCode Extension <b>LiveShare</b> zu installieren, ist das Terminal zu starten und der folgende Code ins Terminal einzufügen und mit der ENTER-Taste auszuführen:
```cmd
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare
```
Ist dies erfolgt ist noch folgende Codezeile ins Terminal einzufügen und mit der Enter-Taste auszuführen:
```cmd
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare-audio
```

</details>
<details>
<summary>VSCode Extension LiveShare manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>LiveShare</b> reingeschrieben werden. Unter den Extensions ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.

Es ist darauf zu achten, dass es diese Extensions von diesem Publisher sind (2 Extensions zu installieren):

<img width="792" alt="Bildschirm­foto 2022-11-22 um 00 10 00" src="https://user-images.githubusercontent.com/100713757/203176282-0e53a6f5-6854-4ff7-a28f-74db01e7ec2a.png">

<img width="792" alt="Bildschirm­foto 2022-11-22 um 00 10 21" src="https://user-images.githubusercontent.com/100713757/203176328-12bd41f2-1013-4a1b-941f-3251c2473626.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2006 | Das Terminal wurde nicht als Administrator gestartet!</summary>

-----------------------------------------------------------------------------------------------------

Während der Fehleranalyse ist es egal, ob das Terminal als Admin gestartet wurde oder nicht.

:warning: Für die Installation muss das Terminal als Adminstrator ausgeführt werden! Sonst wird Choco nicht installiert!
  
![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 2007 | Choco konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt <b>Choco</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Choco sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

:warning: Das Terminal muss als Adminstrator ausgeführt werden! Sonst wird Choco nicht installiert!

![Screenshot (29)_LI](https://user-images.githubusercontent.com/100713757/197366401-965de1cc-424d-459d-beeb-154240fe5653.jpg)

Sollte die Installation fehlschlagen, kann es sein, dass ein nicht funktionierendes Choco bereits vor Ort ist. Diese ist wie folgt zu löschen, indem die das Terminal gestartet und folgende Codezeile im Terminal eingefügt und ausgeführt wird:
```cmd
rd /s /q C:\ProgramData\chocolatey
```

:warning: Das Terminal muss als Adminstrator ausgeführt werden! Sonst wird Choco nicht installiert!

Um dann <b>Choco</b> zu installieren wird für den Download die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```cmd
call %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%temp%/installChoco.ps1'))"
```

Nachdem Download wird die folgende Codezeile im Terminal eingefügt und ausgeführt:
```cmd
call %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%temp%/installChoco.ps1' %*"
```

-----------------------------------------------------------------------------------------------------

</details>

### Weitere Fehler ohne Fehlercodes

<details>
<summary>Umlaute werden nicht richtig dargestellt</summary>

-----------------------------------------------------------------------------------------------------

Nicht-ASCII-Zeichen sind nicht ganz einfach in den Griff zu bekommen, da dies nicht nur von VSCode abhängt.

Ein vielversprechender erster Versuch ist es am unteren rechten Rand des VSCode-Fensters das Encoding zu ändern.

Interessanterweise ist beim Ausführen des Programms (mittels Code Runner) oft CP437 und für den Debugger UTF-8 oder UTF-8 with BOM die richtige Wahl.

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>An existing Chocolatey installation was detected. Installation will not continue.
For security reasons, this script will not overwrite existing installations.</summary>

-----------------------------------------------------------------------------------------------------

Eine unvollständige Installation von Chocolatey kann man mit folgendem Befehl im CMD Terminal mit Administrationsrechten entfernen:

> RMDIR /S /Q C:\ProgramData\chocolatey

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Beim debuggen oder ausführen kommt die Fehlermeldung, a.exe wurde nicht gefunden.</summary>

-----------------------------------------------------------------------------------------------------

Dieser Fehler lässt sich ganz einfach beheben, indem die Installation gemäß der [Anleitung (https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt wird, ohne etwas zu deinstallieren.

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Die Benennung "choco" wurde nicht als Name eines Cmdlet, einer Funktion, einer Skriptdatei oder eines ausführbaren Programms erkannt.</summary>

-----------------------------------------------------------------------------------------------------

Entweder wurde chocolatey nicht installiert, das Ende der Installation wurde nicht abgewartet oder das CMD Terminal wurde nach der Installation nicht beendet. Einfach Terminal schließen und wieder als Administrator öffnen. Bleibt der Fehler, so lässt es sich ganz einfach beheben, indem ihr die Installation gemäß der [Anleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach wiederholt, ohne etwas zu deinstallieren.

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Der scanf Befehl wird nicht ausgeführt</summary>

-----------------------------------------------------------------------------------------------------

Dass der scanf Befehl nicht richtig funktioniert, kann daran liegen, dass dieser nicht im Terminal ausgeführt wird. Um das Problem zu lösen, muss unter Einstellungen im Suchfeld "code runner: run in terminal" gesucht werden, dann erscheint die Option "Code-runner: Run In Terminal", bei der Option den Haken setzen und ggf. VS-Code neu starten. Anschließend sollte die Ausgabe des Codes dann im Terminal stattfinden.
  
![Code_Runner_Setting](https://user-images.githubusercontent.com/128408093/231420129-0a7059e1-8b30-439d-82e9-2e4b62b5c3ba.jpg)


-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehler beim Versuch die Erweiterung zu installieren "Unkown error (0x80092012)"</summary>

-----------------------------------------------------------------------------------------------------
![Unkown error 0x80092012](https://user-images.githubusercontent.com/128408093/231423868-adc8bec6-2224-4988-98e5-71d1ce8b96de.jpg)
  
Erscheint diese Fehlermeldung im Terminal, kann versucht werden, den Zertifikatscheck mit dem Einfügen eines zusätzlichen Parameters zu überbrücken. Dazu muss folgender Befehl in die Eingabeaufforderung kopiert werden:
  
```
curl --ssl-no-revoke -o %temp%\vsc.cmd https://raw.githubusercontent.com/hshf1/HSH_AddOn4VSC/master/script/vscwindows.cmd && %temp%\vsc.cmd install  
```

(ggf. kann es sein, dass nach ausführen des Codes, sich Anti-Viren-Porgramme dazwischen schalten, es wäre ratsam diese für die Dauer der Installation zu deaktivieren.)
  
-----------------------------------------------------------------------------------------------------

</details>


## <p align="center">Linux</p>

<details>
<summary>Fehlercode: 3000 | settings/launch/tasks.json konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Befinden sich die *.json-Dateien nicht in <b>~/.config/Code/User</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Diese sollten während der Installation dort erstellt werden.<br />
<br />
Sollte es mit der Installation dennoch nicht erstellt werden, so gibt es 2 Möglichkeiten:

<details>
<summary>*.json-Dateien automatisch erstellen</summary>
  
Um die *.json-Dateien automatisch zu erstellen, ist das Terminal zu starten und die folgenden Codezeilen aus der Installation einzeln auszuführen.<br />
Für die settings.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/.config/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/settings.json
```
Für die launch.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/.config/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/launch.json
```
Für die tasks.json ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
curl --create-dirs -o ~/.config/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/tasks.json
```
  
</details>
<details>
<summary>*.json-Dateien manuell erstellen</summary>

Um die *.json-Dateien manuell zu erstellen, ist zuerst das Verzeichnis <b>~/.config/Code/User</b> zu öffnen. Sollte das Verzeichnis noch nicht vorhanden, muss das erstellt werden. Dieses Verzeichnis wird aber auch automatisch erstellt, sobald VSCode geöffnet wird.
  <br />
Dann sind 3 neue Text-Dateien dort zu erstellen. Diese sind so zu benennen, wie hier geschrieben. Schreibfehler führen dazu, dass die Dateien nicht erkannt werden. Die Dateiendungen müssen unbedingt *.json sein und nicht *.txt oder anderes.
  <br />
Für die settings.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Linux/settings.json) einzufügen und zu speichern.
  
Für die launch.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Linux/launch.json) einzufügen und zu speichern.
  
Für die tasks.json ist der Inhalt [von diesem Link](https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Linux/tasks.json) einzufügen und zu speichern.

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 3001 | VSCode ist nicht installiert oder konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt <b>VSCode</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. VSCode sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

Um <b>VSCode</b> zu installieren, ist das Terminal zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
sudo snap install --classic code
```
  
Aufgrund des Befehls <b>sudo</b> sind hier Adminrechte nötig!

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 3002 | Compiler ist nicht installiert oder konnte nicht erkannt werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt der <b>Compiler</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Der Compiler sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, kann dieser Schritt nochmal einzeln ausgeführt werden:

Um den <b>Compiler</b> zu installieren, ist das Terminal zu starten. Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
sudo apt install gcc
```
  
Aufgrund des Befehls <b>sudo</b> sind hier Adminrechte nötig!
  
-----------------------------------------------------------------------------------------------------
  
</details>

<details>
<summary>Fehlercode: 3003 | Die Extension Code-Runner konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------

Fehlt die VSCode Extension <b>Code-Runner</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension Code-Runner automatisch installieren</summary>
  
Um die VSCode Extension <b>Code-Runner</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension formulahendry.code-runner
```
  
</details>
<details>
<summary>VSCode Extension Code-Runner manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>Code-Runner</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 37 45" src="https://user-images.githubusercontent.com/100713757/203163145-23d2a7a9-7d91-404b-99de-8cc5f84a0312.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 3004 | Die Extension C/C++ konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt die VSCode Extension <b>C/C++</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension C/C++ automatisch installieren</summary>
  
Um die VSCode Extension <b>C/C++</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension ms-vscode.cpptools
```
  
</details>
<details>
<summary>VSCode Extension C/C++ manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>C/C++</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 28 09" src="https://user-images.githubusercontent.com/100713757/203161578-c56ff44f-09e7-4b91-a6bb-48c371701d56.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 3005 | Die Extension LiveShare konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt die VSCode Extension <b>LiveShare</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension LiveShare automatisch installieren</summary>
  
Um die VSCode Extension <b>LiveShare</b> zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension ms-vsliveshare.vsliveshare-pack
```
  
</details>
<details>
<summary>VSCode Extension LiveShare manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>LiveShare</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 25 26" src="https://user-images.githubusercontent.com/100713757/203161129-69856ae6-097d-4dba-9671-ee98d09480b9.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>

<details>
<summary>Fehlercode: 3006 | Die Extension lldb konnte nicht gefunden werden!</summary>

-----------------------------------------------------------------------------------------------------
  
Fehlt die VSCode Extension <b>lldb</b>, so kann die Installation gemäß der [Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) einfach erneut ausgeführt werden. Die VSCode Extension sollte damit installiert werden.<br />
<br />
Sollte es mit der Installation dennoch nicht installiert werden, so gibt es 2 Möglichkeiten:

<details>
<summary>VSCode Extension lldb automatisch installieren</summary>
  
Um die VSCode Extension lldb zu installieren, ist das Terminal zu starten. Dann muss zuerst <b>code</b> zur Umgebungsvariable hinzugefügt werden, indem der folgende Code ins Terminal kopiert und mit der ENTER-Taste ausgeführt wird:
```sh
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```
Im Anschluss ist die folgende Codezeile im Terminal einzufügen und mit der ENTER-Taste auszuführen:
```sh
source ~/.bash_profile
```
Nun wird für die Installation die folgende Codezeile im Terminal eingefügt und mit der ENTER-Taste ausgeführt:
```sh
code --install-extension vadimcn.vscode-lldb
```
  
</details>
<details>
<summary>VSCode Extension lldb manuell installieren (am einfachsten und schnellsten)</summary>

Zuerst ist VSCode zu starten. Links gibt es die Rubrik Extensions (Icon mit 4 Rechtecken).

<img width="367" alt="image" src="https://user-images.githubusercontent.com/78163337/112048606-e031c480-8b4e-11eb-81a7-13dccddf3201.png">

Dort kann in der Suche nun <b>lldb</b> reingeschrieben werden. Unter der Extension ist auf den Button Install zu klicken und im Anschluss ggf. VSCode neuzustarten.
  
Es ist darauf zu achten, dass es diese Extension von diesem Publisher ist:
  
<img width="792" alt="Bildschirm­foto 2022-11-21 um 22 19 49" src="https://user-images.githubusercontent.com/100713757/203160275-164fbe82-000f-4e91-aea5-f81192e165f9.png">

</details>

-----------------------------------------------------------------------------------------------------

</details>
