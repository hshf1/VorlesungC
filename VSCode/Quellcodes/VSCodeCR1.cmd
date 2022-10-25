:: Erstellt am 19.04.2022 von Can Kocak | Hochschule Hannover
:: Zuletzt bearbeitet am 23.10.2022 von Can Kocak | Hochschule Hannover

@echo off
set mydate=%date%
set mytime=%time%
set logfile="U:\Systemordner\Desktop\logVSC.txt"
set settingsjson="%APPDATA%\Code\User\settings.json"
set launchjson="%APPDATA%\Code\User\launch.json"
set tasksjson="%APPDATA%\Code\User\tasks.json"
set vscerweiterung="C:\Program Files\Microsoft VS Code\bin\code"
set testprogcdatei="U:\C_Uebung\testprog.c"
set %cuebungstart="U:\Systemordner\Desktop\C_Uebung.cmd"

(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Windows-Computerraum-Installation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover ^| Zuletzt bearbeitet am 23.10.2022.
echo.
echo Die aktuelle Version gibt es hier:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md
echo.
echo Bei Problemen könnt ihr hier nach Lösungen schauen:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Auf dem Desktop befindet sich der Shortcut C_Uebung.cmd -> zum Programmieren diese Datei nutzen.
echo Die Datei kann nach belieben verschoben werden. Sollte diese Datei nicht vorhanden sein ist die Installationsdatei erneut auszuführen.
echo.
echo Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo >CON) >> %logfile%

:: determine OS and writing in logfile
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %logfile%

:: set environment variables
setx Path "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"
echo %Path% >> "%temp%\pathaktuell.txt"
findstr Dev-Cpp\MinGW64\bin "%temp%\pathaktuell.txt"
IF %errorlevel% == 0 (
(echo Meldung: Umgebungsvariable wurde erfolgreich gesetzt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Umgebungsvariable konnte nicht gesetzt werden!
echo.
echo >CON) >> %logfile%
)
del "%temp%\pathaktuell.txt"

echo Alte Einstellungen werden gesucht und ersetzt/erstellt...
if NOT EXIST "%APPDATA%\Code\User" (
mkdir "%APPDATA%\Code\User\"
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
echo "extensions.autoUpdate": false,                 // Deaktivieren von Auto-Updates der Extensions
echo "C_Cpp.debugShortcut": false,                   // Deaktivieren der nicht getesteten neuen Funktion von C/C++ Erweiterung
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
echo >CON) > %settingsjson%
if EXIST %settingsjson% (
(echo Meldung: Neue settings.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

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
echo >CON ) > %launchjson%
if EXIST %launchjson% (
(echo Meldung: Neue launch.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

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
echo >CON ) > %tasksjson%
if EXIST %tasksjson% (
(echo Meldung: Neue tasks.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler : Neue tasks.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: install extension code-runner and write in logfile
call %vscerweiterung% --install-extension formulahendry.code-runner
if %errorlevel% == 0 (
(echo Meldung: Code-Runner Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler : Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: install extension C/C++ and write in logfile
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

:: install extension LiveShare and write in logfile
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

:: install extension LiveShare-Audio and write in logfile
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

:: create folder if not exist
if not exist "U:\C_Uebung\" mkdir U:\C_Uebung

:: delete file if exist
if EXIST "U:\C_Uebung\testprog.c" del U:\C_Uebung\testprog.c

:: create file with following content 
echo #include ^<stdio.h^> >> %testprogcdatei%
echo. >> %testprogcdatei%
echo int main(){ >> %testprogcdatei%
echo    int x = 0; >> %testprogcdatei%
echo    x++; >> %testprogcdatei%
echo    printf("Hello World! x = %%d\n", x); >> %testprogcdatei%
echo } >> %testprogcdatei%

:: delete file if exist
if EXIST U:\Systemordner\Desktop\C_Uebung.cmd del U:\Systemordner\Desktop\C_Uebung.cmd

:: create batch to open folder in VSCode
(
echo start "" "C:\Program Files\Microsoft VS Code\Code.exe" -r U:\C_Uebung 
echo EXIT /B
echo >CON) >> %cuebungstart%

(
echo Installation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs
start "" %logfile%
EXIT /B
