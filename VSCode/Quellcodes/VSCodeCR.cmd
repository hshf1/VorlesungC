@echo off
set mydate=%date%
set mytime=%time%

(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Installation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover 01.05.2022 V1.03 VSCode installation für den Computerraum der HsH.
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

echo Umgebungsvariable wird gesetzt.
setx Path "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"
echo %Path% >> %USERPROFILE%\AppData\Local\Temp\pathaktuell.txt
findstr Dev-Cpp\MinGW64\bin %USERPROFILE%\AppData\Local\Temp\pathaktuell.txt
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
echo       "miDebuggerPath": "C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\gdb.exe",
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
echo        "miDebuggerPath": "C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\gdb.exe",
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
echo		"command": "C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\gcc.exe",
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
echo		"detail": "Compiler: C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\gcc.exe"
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
cmd /c start %USERPROFILE%/Desktop/logVSC.txt
