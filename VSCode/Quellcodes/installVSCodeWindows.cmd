:: Erstellt am 01.05.2022 von Can Kocak | Hochschule Hannover

@echo off
set mydate=%date%
set mytime=%time%

(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Installation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover 01.05.2022 V1.02 VSCode installation.
echo.
echo Die aktuelle Version gibt es unter https://github.com/hshf1/VorlesungC/blob/main/VSCode/
echo.
echo Bei Problemen könnt ihr hier sehen, was falsch gelaufen ist und unter dem Link
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo findet ihr mögliche Lösungen. Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Wenn alles funktioniert, kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt

echo Betriebssystem wird ermittelt...
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt

echo Adminrechte werden gelesen...
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
(
echo Meldung: Das Programm wurde erfolgreich mit Adminrechten gestartet.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(
echo Fehler : Das Programm wurde nicht mit Adminrechten gestartet! Das Programm wird vorzeitig beendet.
echo          Das Programm muss mit Adminrechten gestartet werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
echo msgbox"Installation abgebrochen! Das Programm muss mit Adminrechten gestartet werden.",vbInformation , "Installation abgebrochen."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs
goto beenden
)

echo Choco wird gesucht...
choco -v
if %errorlevel% == 0 (
set myVar=0
(
echo Meldung: Chocolatey ist bereits installiert! 
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
set myVar=1
(echo Meldung: Chocolatey wurde nicht gefunden, die Installationsdatei wird heruntergeladen.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%USERPROFILE%/AppData/Local/Temp/installChoco.ps1'))"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Meldung: Choco Installationsdatei wurde unter dem Namen installChoco.ps1 erfolgreich heruntergeladen!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Choco Installationsdatei konnte nicht gefunden/heruntergeladen werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
rd /s /q C:\ProgramData\chocolatey
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%USERPROFILE%/AppData/Local/Temp/installChoco.ps1' %*"
del "%USERPROFILE%\AppData\Local\Temp\installChoco.ps1"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Fehler: Temporäre Choco Installationsdatei konnte nicht wieder gelöscht werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Meldung: Temporäre Choco Installationsdatei wurde erfolgreich wieder gelöscht!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
)

echo Umgebungsvariable wird gesetzt.
setx Path "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
echo %Path% >> %USERPROFILE%\AppData\Local\Temp\pathaktuell.txt
findstr chocolatey\lib\mingw %USERPROFILE%\AppData\Local\Temp\pathaktuell.txt
IF %errorlevel% == 0 (
(echo Meldung: Umgebungsvariable wurde erfolgreich gesetzt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Umgebungsvariable konnte nicht gesetzt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
del "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"

choco -v 
if %errorlevel% == 0 (
if %myVar% == 1 (
(echo Meldung: Choco wurde erfolgreich installiert!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)) ELSE (
(echo Fehler: Ein Fehler ist aufgetreten. Choco konnte nicht installiert werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

echo Compiler und Debugger werden installiert...
choco install mingw --version=8.1.0 -y
if ERRORLEVEL == 0 (
(echo Meldung: Compiler und Debugger wurden/sind erfolgreich installiert!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von Compiler und Debugger ist aufgetreten.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

echo VSCode wird installiert...
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (
(echo Meldung: VSCode wurde nicht gefunden. VSCode wird installiert.
echo. 
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
choco uninstall vscode vscode.install -y
)
choco install vscode -y
if ERRORLEVEL == 0 (
(echo Meldung: VSCode wurde/ist erfolgreich installiert!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von VSCode ist aufgetreten.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

echo Alte Einstellungen werden gesucht und ersetzt/erstellt...
if NOT EXIST %APPDATA%\Code\User (
mkdir %APPDATA%\Code\User\
)
if NOT EXIST %APPDATA%\Code\User\settings.json (
(echo Meldung: Alte settings.json wurde nicht gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Meldung: Alte settings.json wurde gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
del "%APPDATA%\Code\User\settings.json"
if NOT EXIST %APPDATA%\Code\User\settings.json (
(echo Meldung: Alte settings.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Alte settings.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
)
(echo {
echo    // Allgemeine Nutzereinstellungen
echo "liveshare.anonymousGuestApproval": "accept",   // Live Share eingeladene Anonyme Nutzer automatisch akzeptieren
echo "liveshare.guestApprovalRequired": false,       // Live Share um eingeladene Nutzer automatisch zu akzeptieren auf false einstellen
echo "extensions.ignoreRecommendations": true,       // Keine Empfehlungen mehr Anzeigen
echo "files.encoding": "cp437",                      // Zur richtigen Darstellung von Umlauten
echo //"files.autoGuessEncoding": true,              // Zurzeit, deaktiviert, da noch instabil! Automatische Anpassung der Encodierung, falls möglich
echo "editor.unicodeHighlight.nonBasicASCII": false, // Nicht Basic ASCII Zeichen nicht hervorheben
echo "files.autoSave": "onFocusChange",              // Dateien werden bei Änderungen des Fokus automatisch gespeichert
echo "code-runner.saveFileBeforeRun": true,          // speichert aktuelle Datei bevor sie mit CodeRunner ausgeführt wird
echo "editor.bracketPairColorization.enabled": true, // Um Klammern und andere farbig darzustellen
echo "editor.insertSpaces": true,                    // Ersezt ein Tab durch Leerzeichen
echo "editor.tabSize": 4,                            // Setzt die Zahl der durch einen Tab zu ersetzenden Leerzeichen
echo "editor.renderWhitespace": "none",              // Zeigt keine Leerzeichen ein 
echo //"editor.renderWhitespace": "selection",       // Nur im markierten Bereich Leerzeichen anzeigen
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
echo >CON) > %APPDATA%\Code\User\settings.json
if EXIST %APPDATA%\Code\User\settings.json (
(echo Meldung: Neue settings.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

if NOT EXIST %APPDATA%\Code\User\launch.json (
(echo Meldung: Alte launch.json wurde nicht gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Meldung: Alte launch.json wurde gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
del "%APPDATA%\Code\User\launch.json"
if NOT EXIST %APPDATA%\Code\User\launch.json (
(echo Meldung: Alte launch.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Alte launch.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
)
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
echo >CON ) > %APPDATA%\Code\User\launch.json
if EXIST %APPDATA%\Code\User\launch.json (
(echo Meldung: Neue launch.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

if NOT EXIST %APPDATA%\Code\User\tasks.json (
(echo Meldung: Alte tasks.json wurde nicht gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Meldung: Alte tasks.json wurde gefunden.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
del "%APPDATA%\Code\User\tasks.json"
if NOT EXIST %APPDATA%\Code\User\tasks.json (
(echo Meldung: Alte tasks.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Alte tasks.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
)
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
echo >CON ) > %APPDATA%\Code\User\tasks.json
if EXIST %APPDATA%\Code\User\tasks.json (
(echo Meldung: Neue tasks.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Neue tasks.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

echo VSCode Extensions werden installiert...
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension formulahendry.code-runner
if %errorlevel% == 0 (
(echo Meldung: Code-Runner Extension wurde/ist installiert.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vscode.cpptools
if %errorlevel% == 0 (
(echo Meldung: C/C++ Extension wurde/ist installiert.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Bei der Installation von der C/C++ Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare-pack
if %errorlevel% == 0 (
(echo Meldung: Live Share Extension wurde/ist installiert.
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
) ELSE (
(echo Fehler: Bei der Installation von der Live Share Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt
)

(
echo Installation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %USERPROFILE%/Desktop/logVSC.txt

echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs
:beenden
cmd /c start %USERPROFILE%/Desktop/logVSC.txt
