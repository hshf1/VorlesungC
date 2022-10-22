:: Erstellt am 16.04.2022 von Can Kocak | Hochschule Hannover
:: Zuletzt bearbeitet am 22.10.2022 von Can Kocak | Hochschule Hannover

:: Variablen setzen
@echo off
set mydate=%date%
set mytime=%time%
set logfile= %USERPROFILE%\Desktop\logVSC.txt
set settingsjson= %APPDATA%\Code\User\settings.json
set launchjson= %APPDATA%\Code\User\launch.json
set tasksjson= %APPDATA%\Code\User\tasks.json
set workspace= %APPDATA%\Code\User\C_Uebung.code-workspace
set vscerweiterung= "C:\Program Files\Microsoft VS Code\bin\code"

:: Wenn deinstallationsvariable auf true, dann deinstallation ausführen
if %option%==1 (
:: Beginn Logdatei
(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Deinstallation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover ^| Zuletzt bearbeitet am 22.10.2022 VSCode Deinstallation für Windows.
echo.
echo Die aktuelle Version gibt es hier:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md
echo.
echo Bei Problemen könnt ihr hier nach Lösungen schauen:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo >CON) >> %logfile%

:: Betriebssystem ermitteln und in Logdatei speichern
echo Betriebssystem wird ermittelt...
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %logfile%

:: Adminrechte überprüfen, ggf. abbrechen
echo Adminrechte...
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
(
echo Meldung: Das Programm wurde erfolgreich mit Adminrechten gestartet.
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Fehler : Das Programm wurde nicht mit Adminrechten gestartet! Das Programm wird vorzeitig beendet.
echo          Das Programm muss mit Adminrechten gestartet werden!
echo.
echo >CON) >> %logfile%
echo msgbox"Installation abgebrochen! Das Programm muss mit Adminrechten gestartet werden.",vbInformation , "Installation abgebrochen."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs
start "" %logfile%
EXIT /B
)

:: Internetverbindung überprüfen
echo Internetverbindung wird geprüft...
ping -n 1 google.de
if %errorlevel% == 0 (
(
echo Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Meldung: Es konnte keine Verbindung zum Internet erkannt werden.
echo.
echo >CON) >> %logfile%
)

:: Chocoverzeichnis entfernen
echo Choco wird entfernt...
rd /s /q "C:\ProgramData\chocolatey"
if NOT EXIST "C:\ProgramData\chocolatey" (
(echo Meldung: Das Verzeichnis von Choco wurde vollständig entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "C:\ProgramData\chocolatey"
if NOT EXIST "C:\ProgramData\chocolatey" (
(echo Meldung: Das Verzeichnis von Choco wurde vollständig entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Das Verzeichnis von Choco konnte nicht entfernt werden.
echo.
echo >CON) >> %logfile%
)
)

:: VSCode deinstallieren
echo VSCode wird deinstalliert...
call "C:\Program Files\Microsoft VS Code\unins000.exe"
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" (
(echo Meldung: VSCode wurde erfolgreich deinstalliert.
echo. 
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: VSCode konnte nicht deinstalliert werden.
echo.
echo >CON) >> %logfile%
)

:: Alte Einstellungen entfernen und Verzeichnis löschen
echo Alte Einstellungen werden gesucht und entfernt...
rd /s /q "%APPDATA%\Code"
if NOT EXIST "%APPDATA%\Code" (
(echo Meldung: Alte Einstellungen wurden erfolgreich gelöscht.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "%APPDATA%\Code"
if NOT EXIST "%APPDATA%\Code" (
(echo Meldung: Alte Einstellungen wurden erfolgreich gelöscht.
echo.
echo >CON) >> %logfile% 
) ELSE (
(echo Fehler: Alte Einstellungen konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
)
)

:: VSCode Extensions entfernen
echo VSCode Extensions...
rd /s /q "%USERPROFILE%\.vscode"
if EXIST "%USERPROFILE%\.vscode" (
(echo Fehler: Die Extensions von VSCode konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "%USERPROFILE%\.vscode"
if EXIST "%USERPROFILE%\.vscode" (
(echo Fehler: Die Extensions von VSCode konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Die Extensions von VSCode konnten erfolgreich gelöscht werden.
echo.
echo >CON) >> %logfile%
)
)

:: Deinstallation beendet
(
echo Deinstallation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

:: Deinstallation in PopUp anzeigen
echo msgbox"Deinstallation beendet!",vbInformation , "Deinstallation beendet."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs

:: Logdatei anzeigen
start "" %logfile%

:: Terminal beenden
EXIT /B
)

:: Beginn der logdatei
@(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Installation am %mydate% um %mytime%.
echo.
echo Hochschule Hannover ^| Zuletzt bearbeitet am 22.10.2022 VSCode Installation für Windows.
echo.
echo Die aktuelle Version gibt es hier:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md
echo.
echo Bei Problemen könnt ihr hier nach Lösungen schauen:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
) >> %logfile%

:: Betriebssystem in logdatei speichern
echo Betriebssystem wird ermittelt...
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %logfile%

:: Prüfen, ob als Admin gestartet, wenn nicht Skript beenden und in logdatei eintragen
echo Adminrechte...
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
(
echo Meldung: Das Programm wurde erfolgreich mit Adminrechten gestartet.
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Fehler : Das Programm wurde nicht mit Adminrechten gestartet! Das Programm wird vorzeitig beendet.
echo          Das Programm muss mit Adminrechten gestartet werden!
echo.
echo >CON) >> %logfile%
echo msgbox"Installation abgebrochen! Das Programm muss mit Adminrechten gestartet werden.",vbInformation , "Installation abgebrochen."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs
start "" %logfile%
EXIT /B
)

:: Internetverbindung prüfen und in logdatei eintragen
echo Internetverbindung wird geprüft...
ping -n 1 google.de
if %errorlevel% == 0 (
(
echo Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Fehler : Es konnte keine Verbindung zum Internet erkannt werden!
echo          Für die Installation ist eine Internetverbindung notwendig.
echo.
echo >CON) >> %logfile%
)

:: Nach Choco suchen, wenn nicht vorhanden oder fehlerhaft installiert löschen und neu installieren
echo Choco wird gesucht...
choco -v
if %errorlevel% == 0 (
set myVar=0
(
echo Meldung: Chocolatey ist bereits installiert! 
echo.
echo >CON) >> %logfile%
) ELSE (
set myVar=1
(echo Meldung: Chocolatey wurde nicht gefunden, die Installationsdatei wird heruntergeladen.
echo.
echo >CON) >> %logfile%
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%USERPROFILE%/AppData/Local/Temp/installChoco.ps1'))"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Meldung: Choco Installationsdatei wurde unter dem Namen installChoco.ps1 erfolgreich heruntergeladen!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Choco Installationsdatei konnte nicht gefunden/heruntergeladen werden!
echo.
echo >CON) >> %logfile%
)
rd /s /q C:\ProgramData\chocolatey
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%USERPROFILE%/AppData/Local/Temp/installChoco.ps1' %*"
del "%USERPROFILE%\AppData\Local\Temp\installChoco.ps1"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Fehler: Temporäre Choco Installationsdatei konnte nicht wieder gelöscht werden!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Temporäre Choco Installationsdatei wurde erfolgreich wieder gelöscht!
echo.
echo >CON) >> %logfile%
)
)

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden -> logdatei eintragen
echo Umgebungsvariable wird gesetzt.
setx Path "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
echo %Path% >> "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"
findstr chocolatey\lib\mingw "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"
IF %errorlevel% == 0 (
(echo Meldung: Umgebungsvariable wurde erfolgreich gesetzt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Umgebungsvariable konnte nicht gesetzt werden!
echo.
echo >CON) >> %logfile%
)
del "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"

:: Prüfen ob choco vorhanden ist, manchmal fehlerhaft, wenn neu installiert
choco -v 
if %errorlevel% == 0 (
if %myVar% == 1 (
(echo Meldung: Choco wurde erfolgreich installiert!
echo.
echo >CON) >> %logfile%
)) ELSE (
(echo Fehler: Ein Fehler ist aufgetreten. Choco konnte nicht installiert werden!
echo.
echo >CON) >> %logfile%
)

:: Compiler und Debugger installieren mit choco und in logdatei eintragen
echo Compiler und Debugger werden installiert...
choco install mingw --version=8.1.0 -y
if ERRORLEVEL == 0 (
(echo Meldung: Compiler und Debugger wurden/sind erfolgreich installiert!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von Compiler und Debugger ist aufgetreten.
echo.
echo >CON) >> %logfile%
)

:: VScode installieren bzw. neu installieren, falls fehlerhaft und in logdatei eintragen
echo VSCode wird installiert...
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (
(echo Meldung: VSCode wurde nicht gefunden. VSCode wird installiert.
echo. 
echo >CON) >> %logfile%
choco uninstall vscode vscode.install -y
)
choco install vscode -y
if ERRORLEVEL == 0 (
(echo Meldung: VSCode wurde/ist erfolgreich installiert!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von VSCode ist aufgetreten.
echo.
echo >CON) >> %logfile%
)

:: Alte settings.json suchen und löschen
echo Alte Einstellungen werden gesucht und ersetzt/erstellt...
if NOT EXIST %APPDATA%\Code\User (
mkdir %APPDATA%\Code\User\
)
if NOT EXIST %settingsjson% (
(echo Meldung: Alte settings.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte settings.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %settingsjson%
if NOT EXIST %settingsjson% (
(echo Meldung: Alte settings.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte settings.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)

:: Neue settings.json erstellen
(echo {
echo    // Allgemeine Nutzereinstellungen
echo "liveshare.anonymousGuestApproval": "accept",   // Live Share eingeladene Anonyme Nutzer automatisch akzeptieren
echo "liveshare.guestApprovalRequired": false,       // Live Share um eingeladene Nutzer automatisch zu akzeptieren auf false einstellen
echo "extensions.ignoreRecommendations": true,       // Keine Empfehlungen mehr Anzeigen
echo "files.encoding": "cp437",                      // Zur richtigen Darstellung von Umlauten
echo //"files.autoGuessEncoding": true,              // Zurzeit, deaktiviert, da noch instabil! Automatische Anpassung der Encodierung, falls möglich
echo "editor.unicodeHighlight.nonBasicASCII": false, // Nicht Basic ASCII Zeichen nicht hervorheben
echo "files.autoSave": "onFocusChange",              // Dateien werden bei Änderungen des Fokus automatisch gespeichert
echo "code-runner.saveFileBeforeRun": true,          // speichert aktuelle Datei bevor sie mit CodeRunner ausgef�hrt wird
echo "editor.bracketPairColorization.enabled": true, // Um Klammern und andere farbig darzustellen
echo "editor.insertSpaces": true,                    // Ersezt ein Tab durch Leerzeichen
echo "editor.tabSize": 4,                            // Setzt die Zahl der durch einen Tab zu ersetzenden Leerzeichen
echo "editor.renderWhitespace": "none",              // Zeigt keine Leerzeichen ein 
echo //"editor.renderWhitespace": "selection",       // Nur im markierten Bereich Leerzeichen anzeigen
echo "extensions.autoUpdate": false,                 // Deaktivieren von Auto-Updates der Extensions
echo "C_Cpp.debugShortcut": false,                   // Deaktivieren der instabilen neue Funktion von C/C++ Erweiterung
echo "code-runner.runInTerminal": true,              // Um Eingaben in seinem Programm tätigen zu können z.B. für scanf
echo "code-runner.preserveFocus": false,             // damit springt man automatisch ins Terminal bei Abarbeitung
echo "code-runner.executorMap": {
echo   "c": "clear && cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
echo },
echo "editor.tokenColorCustomizations": {
echo   "textMateRules": [
echo       {
echo           "scope": "keyword",
echo           "settings": {
echo               "fontStyle": "bold"
echo           }
echo       },
echo   ]
echo },
echo    // Einstellungen für den Debugger
echo "launch": {
echo   "version": "0.2.0",
echo   "configurations": [{
echo       "type": "cppdbg",
echo       "request": "launch",
echo       "name": "debuggen",
echo       "program": "${fileDirname}\\${fileBasenameNoExtension}.exe",
echo       "args": [],
echo       "stopAtEntry": false,
echo       "cwd": "${workspaceFolder}",
echo       "environment": [],
echo       "externalConsole": false,
echo       "MIMode": "gdb",
echo       "miDebuggerPath": "C:\\ProgramData\\chocolatey\\bin\\gdb.exe",
echo       "setupCommands": [
echo           {
echo               "description": "Automatische Strukturierung und Einrückung für \"gdb\" aktivieren",
echo               "text": "-enable-pretty-printing",
echo               "ignoreFailures": true
echo           }
echo       ],
echo       "preLaunchTask": "C/C++: gcc.exe Aktive Datei kompilieren"
echo   }]
echo }
echo }
echo >CON) > %settingsjson%

:: Prüfen ob neue settings.json erstellt wurde und in logdatei eintrage
if EXIST %settingsjson% (
(echo Meldung: Neue settings.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Prüfen ob alte launch.json vorhanden ist und löschen -> logdatei eintragen
if NOT EXIST %launchjson% (
(echo Meldung: Alte launch.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte launch.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %launchjson%
if NOT EXIST %launchjson% (
(echo Meldung: Alte launch.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte launch.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)

:: Neue launch.json erstellen
(echo {
echo // Use IntelliSense to learn about possible attributes.
echo // Hover to view descriptions of existing attributes.
echo // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
echo "version": "0.2.0",
echo "configurations": [
echo   {
echo        "name": "gcc.exe - Aktive Datei erstellen und debuggen",
echo        "type": "cppdbg",
echo        "request": "launch",
echo        "program": "${fileDirname}\\${fileBasenameNoExtension}.exe",
echo        "args": [],
echo        "stopAtEntry": false,
echo        "cwd": "${workspaceFolder}",
echo        "environment": [],
echo        "externalConsole": false,//"externalTerminal",
echo        "MIMode": "gdb",
echo        "miDebuggerPath": "C:\\ProgramData\\chocolatey\\bin\\gdb.exe",
echo        "setupCommands": [
echo            {
echo                "description": "Automatische Strukturierung und Einrückung für \"gdb\" aktivieren",
echo                "text": "-enable-pretty-printing",
echo                "ignoreFailures": true
echo            }
echo        ],
echo        "preLaunchTask": "C/C++: gcc.exe Aktive Datei kompilieren"
echo    }
echo ]
echo } 
echo >CON ) > %launchjson%

:: Prüfen ob neue launch.json erstellt wurde und in logdatei eintragen
if EXIST %launchjson% (
(echo Meldung: Neue launch.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Prüfen, ob alte tasks.json vorhanden ist und löschen -> logdatei eintragen
if NOT EXIST %tasksjson% (
(echo Meldung: Alte tasks.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte tasks.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %tasksjson%
if NOT EXIST %tasksjson% (
(echo Meldung: Alte tasks.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte tasks.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)

:: Neue tasks.json erstellen
(echo {
echo "version": "2.0.0",
echo "tasks": [
echo 	{
echo		"type": "cppbuild",
echo		"label": "C/C++: gcc.exe Aktive Datei kompilieren",
echo		"command": "C:\\ProgramData\\chocolatey\\bin\\gcc.exe",
echo		"args": [
echo			"-g",
echo			"${file}",
echo			"-o",
echo			"${fileDirname}\\${fileBasenameNoExtension}.exe"
echo		],
echo		"options": {
echo			"cwd": "${workspaceFolder}"
echo		},
echo		"problemMatcher": [
echo			"$gcc"
echo		],
echo		"group": {
echo			"kind": "build",
echo			"isDefault": true
echo		},
echo		"detail": "Compiler: C:\\ProgramData\\chocolatey\\bin\\gcc.exe"
echo	}
echo ]
echo }
echo >CON ) > %tasksjson%

:: Prüfen, ob neue tasks.json erstellt wurde und in logdatei eintragen
if EXIST %tasksjson% (
(echo Meldung: Neue tasks.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue tasks.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung code-runner installieren und in logdatei eintragen
call %vscerweiterung% --install-extension formulahendry.code-runner
if %errorlevel% == 0 (
(echo Meldung: Code-Runner Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung C/C++ installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vscode.cpptools
if %errorlevel% == 0 (
(echo Meldung: C/C++ Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der C/C++ Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung LiveShare installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare
if %errorlevel% == 0 (
(echo Meldung: Live Share Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Live Share Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung LiveShareAudio installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare-audio
if %errorlevel% == 0 (
(echo Meldung: Live Share Audio Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Live Share Audio Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Wenn Ordner nicht vorhanden, dann erstellen
if NOT EXIST %USERPROFILE%\Documents\C_Uebung\ (
mkdir %USERPROFILE%\Documents\C_Uebung\
)

:: Wenn Datei vorhanden, löschen
if EXIST %USERPROFILE%\Documents\C_Uebung\testprog.c (
del %USERPROFILE%\Documents\C_Uebung\testprog.c
)

:: Testprogramm in C erstellen
echo #include ^<stdio.h^> > %USERPROFILE%\Documents\C_Uebung\testprog.c
echo. >> %USERPROFILE%\Documents\C_Uebung\testprog.c
echo int main(){ >> %USERPROFILE%\Documents\C_Uebung\testprog.c
echo    int x = 0; >> %USERPROFILE%\Documents\C_Uebung\testprog.c
echo    x++; >> %USERPROFILE%\Documents\C_Uebung\testprog.c
echo    printf("Hello World! Nummer: %%d\n", x); >> %USERPROFILE%\Documents\C_Uebung\testprog.c
echo } >> %USERPROFILE%\Documents\C_Uebung\testprog.c

:: Prüfen ob Datei vorhanden, wenn ja löschen
if EXIST %workspace% (
del %workspace%
)

:: Workspace erstellen
(echo {
echo	"folders": [
echo		{
echo			"path": "../../../../Documents/C_Uebung"
echo		}
echo	]
echo }
echo >CON ) > %workspace%

:: Prüfen ob Datei vorhanden, wenn ja löschen
if EXIST "%USERPROFILE%\Desktop\C_Uebung.code-workspace" (
del "%USERPROFILE%\Desktop\C_Uebung.code-workspace"
)

:: Verknüpfung zum Workspace auf dem Desktop erstellen -> kann später überall hin verschoben werden
mklink "%USERPROFILE%\Desktop\C_Uebung.code-workspace" "%APPDATA%\Code\User\C_Uebung.code-workspace"

:: Installation Ende -> logdatei Ende
(
echo Installation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

:: PopUp Fenster
echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%temp%\msg.vbs
erase %temp%\msg.vbs

:: logdatei starten
start "" %logfile%

:: Terminal automatisch beenden
EXIT /B
