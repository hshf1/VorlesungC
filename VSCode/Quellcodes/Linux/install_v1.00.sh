sudo echo 'Installation VSCode'
echo '-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt
date '+Logfile zur Installation am %d.%m.%Y um %H:%M:%S.' >> ~/Desktop/logVSC.txt
echo '
Hochschule Hannover 10.09.2022 V1.00 VSCode Installation für Linux.

Die aktuelle Version gibt es unter https://github.com/hshf1/VorlesungC/blob/main/VSCode/

Bei Problemen könnt ihr hier sehen, was falsch gelaufen ist und unter dem Link
https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
findet ihr mögliche Lösungen. Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.

Wenn alles funktioniert, kann diese Datei gelöscht werden.
-------------------------------------------------------------------------------------------

' >> ~/Desktop/logVSC.txt

echo 'Betriebssystem wird ermittelt...'
echo 'Meldung: Ausführendes System:' >> ~/Desktop/logVSC.txt
cat /etc/*-release >> ~/Desktop/logVSC.txt
echo '' >> ~/Desktop/logVSC.txt

echo 'VSCode wird überprüft bzw. installiert...'
code --version
if [ $? -eq 0 ]
then echo 'Meldung: VSCode ist bereits installiert!
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode ist nicht vorhanden und wird installiert!
' >> ~/Desktop/logVSC.txt
sudo snap install --classic code
code --version
if [ $? -eq 0 ]
then echo 'Meldung: VSCode wurde erfolgreich installiert!
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: VSCode konnte nicht erfolgreich installiert werden!
' >> ~/Desktop/logVSC.txt
fi
fi

echo 'Compiler wird überprüft bzw. installiert...'
gcc --version
if [ $? -eq 0 ]
then echo 'Meldung: Compiler ist installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Compiler nicht vorhanden, Installation wird durchgeführt!
' >> ~/Desktop/logVSC.txt
sudo apt install gcc
gcc --version
if [ $? -eq 0 ]
then echo 'Meldung: Compiler wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Compiler konnte nicht erfolgreich installiert werden!
' >> ~/Desktop/logVSC.txt
fi
fi

echo 'Umgebungsvariable wird hinzugefügt...'
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
if [ $? -eq 0 ]
then echo 'Meldung: Umgebungsvariable wurde erfolgreich hinzugefügt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Umgebungsvariable konnte nicht hinzugefügt werden!
' >> ~/Desktop/logVSC.txt
fi

echo 'Alte Einstellungen werden gesucht und ersetzt/erstellt...'
file=~/.config/Code
if [ -d "$file" ]
then :
else mkdir ~/.config/Code
mkdir ~/.config/Code/User
fi
file=~/.config/Code/User/settings.json
if [ -e "$file" ] 
then echo 'Meldung: Alte settings.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/.config/Code/User/settings.json
if [ -e "$file" ]
then echo 'Fehler: Alte settings.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte settings.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte settings.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi
echo '{
   // Allgemeine Nutzereinstellungen
"liveshare.anonymousGuestApproval": "accept",   // Live Share eingeladene Anonyme Nutzer automatisch akzeptieren
"liveshare.guestApprovalRequired": false,       // Live Share um eingeladene Nutzer automatisch zu akzeptieren auf false einstellen
"extensions.ignoreRecommendations": true,       // Keine Empfehlungen mehr Anzeigen
"files.encoding": "utf8",                       // Zur richtigen Darstellung von Umlauten
//"files.autoGuessEncoding": true,              // Zurzeit deaktiviert, da noch instabil! Automatische Anpassung der Encodierung, falls möglich
"editor.unicodeHighlight.nonBasicASCII": false, // Nicht Basic ASCII Zeichen nicht hervorheben
"files.autoSave": "onFocusChange",              // Dateien werden bei Änderungen des Fokus automatisch gespeichert
"code-runner.saveFileBeforeRun": true,          // speichert aktuelle Datei bevor sie mit CodeRunner ausgeführt wird
"editor.bracketPairColorization.enabled": true, // Um Klammern und andere farbig darzustellen
"editor.insertSpaces": true,                    // Ersetzt ein Tab durch Leerzeichen
"editor.tabSize": 4,                            // Setzt die Zahl der durch einen Tab zu ersetzenden Leerzeichen
"editor.renderWhitespace": "none",              // Zeigt keine Leerzeichen ein 
//"editor.renderWhitespace": "selection",       // Nur im markierten Bereich Leerzeichen anzeigen
"C_Cpp.debugShortcut": false,                   // Deaktivieren der instabilen neue Funktion von C/C++ Erweiterung
"code-runner.runInTerminal": true,              // Um Eingaben in seinem Programm tätigen zu können z.B. für scanf
"code-runner.preserveFocus": false,             // damit springt man automatisch ins Terminal bei Abarbeitung
"code-runner.defaultLanguage": "C",
    // Einstellungen für den Debugger
    "launch": {
		"version": "0.2.0",
		"configurations": [
			{
			"type": "lldb",
			"request": "launch",
			"name": "debuggen",
			"runtimeExecutable": "/usr/bin/gcc",
            "program": "${fileDirname}/${fileBasenameNoExtension}",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${fileDirname}",
            "environment": [],
            "externalConsole": false,
            "MIMode": "lldb",
            "preLaunchTask": "C/C++: gcc Aktive Datei kompilieren"
			}
		]
	}
}' > ~/.config/Code/User/settings.json
if [ -e "$file" ] 
then echo 'Meldung: Neue settings.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue settings.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi
file=~/.config/Code/User/launch.json
if [ -e "$file" ] 
then echo 'Meldung: Alte launch.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/.config/Code/User/launch.json
if [ -e "$file" ]
then echo 'Fehler: Alte launch.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte launch.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte launch.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi
echo '{
    // Verwendet IntelliSense zum Ermitteln möglicher Attribute.
    // Zeigen Sie auf vorhandene Attribute, um die zugehörigen Beschreibungen anzuzeigen.
    // Weitere Informationen finden Sie unter https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "gcc - Aktive Datei erstellen und debuggen",
            "type": "lldb",
            "request": "launch",
            "program": "${fileDirname}/${fileBasenameNoExtension}",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${fileDirname}",
            "environment": [],
            "externalConsole": false,
            "MIMode": "lldb",
            "preLaunchTask": "C/C++: gcc Aktive Datei kompilieren"
        }
    ]
}' > ~/.config/Code/User/launch.json
if [ -e "$file" ] 
then echo 'Meldung: Neue launch.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue launch.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi
file=~/.config/Code/User/tasks.json
if [ -e "$file" ] 
then echo 'Meldung: Alte tasks.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/.config/Code/User/tasks.json
if [ -e "$file" ]
then echo 'Fehler: Alte tasks.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte tasks.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte tasks.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi
echo '{
    "tasks": [
        {
            "type": "cppbuild",
            "label": "C/C++: gcc Aktive Datei kompilieren",
            "command": "/usr/bin/gcc",
            "args": [
                "-g",
                "${file}",
                "-o",
                "${fileDirname}/${fileBasenameNoExtension}"
            ],
            "options": {
                "cwd": "${fileDirname}"
            },
            "problemMatcher": [
                "$gcc"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "detail": "Vom Debugger generierte Aufgabe."
        }
    ],
    "version": "2.0.0"
}' > ~/.config/Code/User/tasks.json
if [ -e "$file" ] 
then echo 'Meldung: Neue tasks.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue tasks.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi

echo 'Extensions werden installiert...'
code --install-extension formulahendry.code-runner
if [ $? -eq 0 ]
then echo 'Meldung: Die Extension Code-Runner wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension Code-Runner trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi
code --install-extension ms-vscode.cpptools
if [ $? -eq 0 ]
then echo 'Meldung: Die Extension C/C++ wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension C/C++ trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi
code --install-extension ms-vsliveshare.vsliveshare
if [ $? -eq 0 ]
then echo 'Meldung: Die Extension Live Share wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension Live Share trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi
code --install-extension ms-vsliveshare.vsliveshare-audio
if [ $? -eq 0 ]
then echo 'Meldung: Die Extension Live Share Audio wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension Live Share Audio trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi
code --install-extension vadimcn.vscode-lldb
if [ $? -eq 0 ]
then echo 'Meldung: Die Extension lldb Compiler wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension lldb Compiler trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi

echo 'Installation beendet!'
echo 'Installation beendet!
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt
open ~/Desktop/logVSC.txt
sleep 5
kill -9 $PPID