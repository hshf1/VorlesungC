#################################################################
#                                VSCode Fehleranalyse für MacOS #
#                             Hochschule Hannover - Vorlesung C #
#                                zuletzt geändert am 18.11.2022 #
#################################################################

# zur Fehleranalyse folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/Fehleranalyse.sh | bash 

#### Beginn Fehleranalyse ####

# Datum und Uhrzeit festhalten
dateinfo=$(date '+%F')
timeinfo=$(date '+%H:%M:%S')

# Info zum Betriebssystem
softwareinfo=$(sw_vers)

# Internetverbindung prüfen
ping -c 1 www.google.com
if (($? == 0)); then
    pinginfo="Meldung: Es konnte eine Verbindung zum Internet erkannt werden!"
else
    pinginfo="Meldung: Es konnte keine Verbindung zum Internet erkannt werden!"
fi

# Prüfen, ob VSCode installiert ist
if [ -e "/Applications/Visual Studio Code.app" ]; then
    vscinfo2="Meldung: VSCode ist im richtigen Ordner bereits installiert."
else
    vscinfo2="Meldung: VSCode konnte nicht gefunden werden!"
fi

# Prüfen, ob Compiler installiert ist
clang --version
if (($? == 0)); then
    gccversion=$(clang --version)
    gccinfo="Meldung: Compiler bereits installiert.\nCompiler-Version: $gccversion"
else
    gccinfo="Meldung: Compiler konnte nicht erkannt werden!"
fi

# Prüfen, ob settings.json vorhanden ist (Inhalt wird nicht überprüft!)
file=~/Library/Application\ Support/Code/User/settings.json
if [ -e "$file" ]; then
    settingsinfo="Meldung: settings.json wurde gefunden."
else
    settingsinfo="Meldung: settings.json konnte nicht gefunden werden!"
fi

# Prüfen, ob launch.json vorhanden ist (Inhalt wird nicht überprüft!)
file=~/Library/Application\ Support/Code/User/launch.json
if [ -e "$file" ]; then
    launchinfo="Meldung: launch.json wurde gefunden."
else
    launchinfo="Meldung: launch.json konnte nicht gefunden werden!"
fi

# Prüfen, ob tasks.json vorhanden ist (Inhalt wird nicht überprüft!)
file=~/Library/Application\ Support/Code/User/tasks.json
if [ -e "$file" ]; then
    tasksinfo="Meldung: tasks.json wurde gefunden."
else
    tasksinfo="Meldung: tasks.json konnte nicht gefunden werden!"
fi

# Umgebungsvariable setzen und aktualisieren um code zu nutzen
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# refresh terminal bash profile with new environmentpath
source ~/.bash_profile

# Liste installierter Extensions in Variable setzen
installedextensions=$(code --list-extensions)

# Prüfen, ob VSCode Extension code-runner installiert ist
if echo "$installedextensions" | grep 'code-runner' > /dev/null 2>&1; then
    coderunnerinfo="Meldung: Die Extension Code-Runner wurde erfolgreich installiert."
else
    coderunnerinfo="Fehler: Bei der Installation der Extension Code-Runner trat ein Fehler auf."
fi

# Prüfen, ob VSCode Extension cpptools installiert ist
if echo "$installedextensions" | grep 'cpptools' > /dev/null 2>&1; then
    cppinfo="Meldung: Die Extension C/C++ wurde erfolgreich installiert."
else
    cppinfo="Fehler: Bei der Installation der Extension C/C++ trat ein Fehler auf."
fi

# Prüfen, ob VSCode Extension LiveShare installiert ist
if echo "$installedextensions" | grep 'liveshare' > /dev/null 2>&1; then
    liveshareinfo="Meldung: Die Extension Live Share wurde erfolgreich installiert."
else
    liveshareinfo="Fehler: Bei der Installation der Extension Live Share trat ein Fehler auf."
fi

# Prüfen, ob VSCode Extension lldb installiert ist
if echo "$installedextensions" | grep 'lldb' > /dev/null 2>&1; then
    lldbinfo="Meldung: Die Extension lldb Compiler wurde erfolgreich installiert."
else
    lldbinfo="Fehler: Bei der Installation der Extension lldb Compiler trat ein Fehler auf."
fi

# LogFile schreiben und Variablen einsetzen
echo -e "-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
Logfile zur Fehleranalyse von VSCode für MacOS am $dateinfo um $timeinfo.

Die meisten Probleme lassen sich beheben, indem die VSCode Installation erneut ausgeführt wird.
Es kann auch hilfreich sein, zuerst die Deinstallation auszuführen und dann erneut die Installation. 
VSCode Installation: https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md

Einige Fehler können hier entdeckt werden. Diese sind am Ende der Zeile mit einem Fehlercode bezeichnet.
Unter Fehlerbebehung: https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
kann nach den Fehlercodes gesucht werden, um zu sehen, wie diese behoben werden können.

Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
-------------------------------------------------------------------------------------------

Ausführendes Betriebssystem:
$softwareinfo 

$pinginfo

$vscinfo2

$gccinfo

$settingsinfo

$launchinfo

$tasksinfo

$coderunnerinfo

$cppinfo

$liveshareinfo

$lldbinfo

Fehleranalyse beendet!
-------------------------------------------------------------------------------------------
" >> ~/Desktop/logVSC.txt
    
#### Ende Fehleranalyse ####

# Output im Terminal
echo "Fehleranalyse beendet! Das Terminal kann jetzt geschlossen werden."

# LogFile öffnen
open ~/Desktop/logVSC.txt

# exit script
exit 0
