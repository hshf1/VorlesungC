# Erstellt am 20.04.2022 von Can Kocak | Hochschule Hannover

echo 'Hochschule Hannover 20.04.2022 V1.01'
clear && printf '\e[3J'
echo 'Compiler wird überprüft bzw. installiert.'
sudo command xcode-select --install 
echo 'Falls Compiler nicht installiert war, ist das Installationsmenü dafür erschienen, 
ansonsten sollte hierdrüber die Fehlermeldung stehen, dass es bereits installiert ist.'
echo 'Pfad von VSCode wird im System hinzugefügt. VSCode muss bereits heruntergeladen und ins Programmverzeichnis verschoben worden sein!'
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
source ~/.bash_profile
sudo cd /Users/ck/Library/Application\ Support/Code/User
cd /Users/ck/Library/Application\ Support/Code/User
echo 'ggf. vorhandene Einstellungen werden entfernt.'
rm launch.json
rm settings.json
rm tasks.json
echo 'vorhandene Einstellungen wurden entfernt!'
echo 'Neue Globale Einstellungen werden erstellt.'
echo '{
   // Allgemeine Nutzereinstellungen
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
}' >settings.json
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
}' >launch.json
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
}' >tasks.json
echo 'Neue Globale Einstellungen wurden erstellt!'
echo 'Extensions werden installiert.'
code --install-extension eamodio.gitlens
code --install-extension formulahendry.code-runner
code --install-extension ms-vscode.cpptools
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension vadimcn.vscode-lldb
echo 'Extensions wurden installiert!'
echo 'Installation beendet!'
sleep 5s
killall Terminal
