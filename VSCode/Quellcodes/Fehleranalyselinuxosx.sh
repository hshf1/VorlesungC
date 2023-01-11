###############################################
#    VSCode Fehleranalyse für MacOS und Linux #
#           Hochschule Hannover - Vorlesung C #
#              zuletzt geändert am 11.01.2023 #
###############################################

# zur Fehleranalyse folgenden Code im Terminal ausführen (ohne #) (für Linux "sudo snap install curl &&" vorhängen)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Fehleranalyselinuxosx.sh | bash 

#### Beginn Fehleranalyse ####

# Datum und Uhrzeit festhalten
dateinfo=$(date '+%F')
timeinfo=$(date '+%H:%M:%S')

# System bestimmen
os_name=$(uname -s)

if [ "$os_name" = "Darwin" ]; then

    # Info zum Betriebssystem
    softwareinfo=$(sw_vers)

    # Internetverbindung prüfen
    ping -c 1 www.google.com
    if (($? == 0)); then
        pinginfo="Internetverbindung: Es konnte eine Verbindung zum Internet erkannt werden."
    else
        pinginfo="Internetverbindung: Es konnte keine Verbindung zum Internet erkannt werden! (Fehlercode: 0002)"
    fi

    # Prüfen, ob VSCode installiert ist
    if [ -e "/Applications/Visual Studio Code.app" ]; then
        vscinfo2="VSCode: VSCode ist installiert."
    else
        vscinfo2="VSCode: VSCode ist nicht installiert oder konnte nicht gefunden werden! (Fehlercode: 0003)"
    fi

    # Prüfen, ob Compiler installiert ist
    clang --version
    if (($? == 0)); then
        gccversion=$(clang --version)
        gccinfo="Compiler: Compiler ist installiert.\nCompiler-Version: $gccversion"
    else
        gccinfo="Compiler: Compiler ist nicht installiert oder konnte nicht erkannt werden! (Fehlercode: 0004)"
    fi

    # Prüfen, ob settings.json vorhanden ist (Inhalt wird nicht überprüft!)
    file=~/Library/Application\ Support/Code/User/settings.json
    if [ -e "$file" ]; then
        settingsinfo="settings.json: $file wurde gefunden."
    else
        settingsinfo="settings.json: $file konnte nicht gefunden werden! (Fehlercode: 0005)"
    fi

    # Prüfen, ob tasks.json vorhanden ist (Inhalt wird nicht überprüft!)
    file=~/Library/Application\ Support/Code/User/tasks.json
    if [ -e "$file" ]; then
        tasksinfo="tasks.json: $file wurde gefunden."
    else
        tasksinfo="tasks.json: $file konnte nicht gefunden werden! (Fehlercode: 0005)"
    fi

else
    
    # Info zum Betriebssystem
    softwareinfo=$(cat /etc/*-release)

    # Internetverbindung prüfen
    ping -c 1 www.google.com
    if [ $? -eq 0 ]
    then pinginfo="Internetverbindung: Es konnte eine Verbindung zum Internet erkannt werden."
    else pinginfo="Internetverbindung: Es konnte keine Verbindung zum Internet erkannt werden! (Fehlercode: 0002)"
    fi

    # Prüfen, ob VSCode installiert ist
    code --version
    if [ $? -eq 0 ]
    then vscinfo2="VSCode: VSCode ist installiert."
    else vscinfo2="VSCode: VSCode ist nicht installiert oder konnte nicht gefunden werden! (Fehlercode: 0003)"
    fi

    # Prüfen, ob Compiler installiert ist
    gcc --version
    if [ $? -eq 0 ]
    then gccversion=$(gcc --version)
    gccinfo="Compiler: Compiler ist installiert.\nCompiler-Version: $gccversion"
    else gccinfo="Compiler: Compiler ist nicht installiert oder konnte nicht erkannt werden! (Fehlercode: 0004)"
    fi

    # Prüfen, ob settings.json vorhanden ist (Inhalt wird nicht überprüft!)
    file=~/.config/Code/User/settings.json
    if [ -e "$file" ]; then
        settingsinfo="settings.json: $file wurde gefunden."
    else
        settingsinfo="settings.json: $file konnte nicht gefunden werden! (Fehlercode: 0005)"
    fi

    # Prüfen, ob tasks.json vorhanden ist (Inhalt wird nicht überprüft!)
    file=~/.config/Code/User/tasks.json
    if [ -e "$file" ]; then
        tasksinfo="tasks.json: $file wurde gefunden."
    else
        tasksinfo="tasks.json: $file konnte nicht gefunden werden! (Fehlercode: 0005)"
    fi

fi
# Umgebungsvariable setzen und aktualisieren um code zu nutzen
cat <<-EOF >>~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

# refresh terminal bash profile with new environmentpath
source ~/.bash_profile

# Liste installierter Extensions in Variable setzen
installedextensions=$(code --list-extensions --show-versions)

# Prüfen, ob VSCode Extension code-runner installiert ist
if echo "$installedextensions" | grep 'code-runner' > /dev/null 2>&1; then
    coderunnerinfo="Code-Runner: Die Extension Code-Runner ist installiert."
else
    coderunnerinfo="Code-Runner: Die Extension Code-Runner konnte nicht gefunden werden. (Fehlercode: 0006)"
fi

# Prüfen, ob VSCode Extension cpptools installiert ist
if echo "$installedextensions" | grep 'cpptools' > /dev/null 2>&1; then
    cppinfo="C/C++: Die Extension C/C++ ist installiert."
else
    cppinfo="C/C++: Die Extension C/C++ konnte nicht gefunden werden. Fehlercode: 0006)"
fi

# Prüfen, ob VSCode Extension LiveShare installiert ist
if echo "$installedextensions" | grep 'liveshare' > /dev/null 2>&1; then
    liveshareinfo="LiveShare: Die Extension LiveShare ist installiert."
else
    liveshareinfo="LiveShare: Die Extension LiveShare konnte nicht gefunden werden. (Fehlercode: 0006)"
fi

# Prüfen, ob VSCode Extension lldb installiert ist
if echo "$installedextensions" | grep 'lldb' > /dev/null 2>&1; then
    lldbinfo="lldb: Die Extension lldb ist installiert."
else
    lldbinfo="lldb: Die Extension lldb konnte nicht gefunden werden. (Fehlercode: 0006)"
fi

# LogFile schreiben und Variablen einsetzen
echo -e "------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
Logfile zur Fehleranalyse von VSCode für MacOS am $dateinfo um $timeinfo.

Die meisten Probleme lassen sich beheben, indem die VSCode Installation erneut ausgeführt
wird. Es kann auch hilfreich sein, zuerst die Deinstallation auszuführen.

VSCode Installation: https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md

Einige Fehler können hier entdeckt werden und sind am Ende der Zeile mit einem Fehlercode bezeichnet.
Unter Fehlerbebehung: https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
kann nach den Fehlercodes gesucht werden, um zu sehen, wie diese behoben werden können.

Datei- und Ordnernamen dürfen keine Umlaute oder Leerzeichen enthalten!
Zum Debuggen muss in VSCode ein Ordner geöffnet sein und keine einzelne Datei!

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

Versionen installierter VSCode Extensions:
$installedextensions

Fehleranalyse beendet!
-------------------------------------------------------------------------------------------" >> ~/Desktop/logVSC.txt
    
#### Ende Fehleranalyse ####

# Output im Terminal
echo "Fehleranalyse beendet! Das Terminal kann jetzt geschlossen werden."

# LogFile öffnen
open ~/Desktop/logVSC.txt

# exit script
exit 0
