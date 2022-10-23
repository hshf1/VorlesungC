@echo off

setx Path "%Path%;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"

cd %APPDATA%\Code\User
del "settings.json"
del "launch.json"
del "tasks.json"

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
echo >CON ) >launch.json

(echo {
echo    // Allgemeine Nutzereinstellungen
echo "extensions.ignoreRecommendations": true,       // Keine Empfehlungen mehr Anzeigen
echo "files.encoding": "cp437",                      // Zur richtigen Darstellung von Umlauten
echo "files.autoGuessEncoding": true,                // Automatische Anpassung der Encodierung, falls möglich
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
echo >CON) >settings.json

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
echo >CON ) >tasks.json

code --install-extension eamodio.gitlens --install-extension formulahendry.code-runner --install-extension ms-vscode.cpptools --install-extension ms-vsliveshare.vsliveshare-pack
