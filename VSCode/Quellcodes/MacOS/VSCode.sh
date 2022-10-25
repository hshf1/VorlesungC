# created by Can Kocak | 16.04.2022 | Hochschule Hannover
# last modified by Can Kocak | 22.10.2022 | Hochschule Hannover

# Beginn Deinstallation, falls gewünscht
if [ "$uninstall" = "true" ]; then

# Ausgabe im Terminal
echo 'Deinstallation VSCode'

# Beginn der Logdatei
echo '-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt

# Datum und Uhrzeit in Logdatei speichern
date '+Logfile zur Deinstallation am %d.%m.%Y um %H:%M:%S.' >> ~/Desktop/logVSC.txt

# Information in Logdatei einpflegen
echo '
Hochschule Hannover | Zuletzt bearbeitet am 22.10.2022 VSCode Deinstallation für MacOS.

Die aktuelle Version gibt es hier:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md

Bei Problemen könnt ihr hier nach Lösungen schauen:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.

Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
-------------------------------------------------------------------------------------------

' >> ~/Desktop/logVSC.txt

# Ausgabe des Betriebssystem in der Logdatei
echo 'Betriebssystem wird ermittelt...'
echo 'Meldung: Ausführendes System:' >> ~/Desktop/logVSC.txt
sw_vers >> ~/Desktop/logVSC.txt
echo '' >> ~/Desktop/logVSC.txt

# Testen der Internetverbindung
echo 'Internetverbindung...'
ping -c 1 www.google.com
if (( $? == 0))
then echo 'Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Es konnte keine Verbindung zum Internet erkannt werden!
' >> ~/Desktop/logVSC.txt
fi

# Löschen von VSCode und Ausgabe in der Logdatei
echo 'VSCode entfernen...'
rm -R /Applications/Visual\ Studio\ Code.app
file=/Applications/Visual\ Studio\ Code.app
if [ -e "$file" ]
then echo 'Fehler: VSCode konnte nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode wurde erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

# Löschen aller Einstellungen und Ausgabe in der Logdatei
echo 'Alte Einstellungen werden entfernt...'
rm -R ~/Library/Application\ Support/Code
file=~/Library/Application\ Support/Code
if [ -e "$file" ] 
then echo 'Fehler: Alte Einstellungen konnten nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte Einstellungen wurden erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

# Löschen aller Extensions und Ausgabe in der Logdatei
echo 'Extensions werden deinstalliert...'
rm -R ~/.vscode
file=~/.vscode
if [ -e "$file" ]
then echo 'Fehler: VSCode Extensions konnten nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode Extensions wurden erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

# Ausgabe im Terminal
echo 'Deinstallation beendet! Das Terminal kann nun geschlossen werden.'

# Ausgabe in der Logdatei
echo 'Installation beendet!
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt

# Öffne die Logdatei
open ~/Desktop/logVSC.txt

# Warte 5 Sekunden bis die nächste Zeile bearbeitet wird
sleep 5

# exit 0 ersetz killall Terminal-> Terminal wird so nicht mehr automatisch beendet
exit 0

# Ende der If-Anweisung
fi
# Ende Deinstallation -> Skript wird beendet

# Beginn der Installation, falls keine Deinstallation gewünscht
# Beginn der logdatei
echo '-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt

# aktuelle Uhrzeit und Datum in logdatei erfassen
date '+Logfile zur Installation am %d.%m.%Y um %H:%M:%S.' >> ~/Desktop/logVSC.txt

# Information in der logdatei
echo '
Hochschule Hannover | Zuletzt bearbeitet am 22.10.2022 VSCode Installation für MacOS.

Die aktuelle Version gibt es unter https://github.com/hshf1/VorlesungC/blob/main/VSCode/

Bei Problemen könnt ihr hier sehen, was falsch gelaufen ist und unter dem Link
https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
findet ihr mögliche Lösungen. Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.

Wenn alles funktioniert, kann diese Datei gelöscht werden.
-------------------------------------------------------------------------------------------

' >> ~/Desktop/logVSC.txt

# Info über Betriebssystem in logdatei eintragen
echo 'Meldung: Ausführendes System:' >> ~/Desktop/logVSC.txt
sw_vers >> ~/Desktop/logVSC.txt
echo '' >> ~/Desktop/logVSC.txt

# Testen, ob Internetverbindung vorhanden ist und in logdatei eintragen
ping -c 1 www.google.com
if (( $? == 0))
then echo 'Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Es konnte keine Verbindung zum Internet erkannt werden!
           Für die vollständige Installation ist eine Internetverbindung notwendig.
' >> ~/Desktop/logVSC.txt
fi

# Abfrage, ob VSCode vorhanden, wenn nicht -> Download und Installation mit Eintrag in logdatei
file=/Applications/Visual\ Studio\ Code.app
if [ -e "$file" ]
then echo 'Meldung: VSCode ist im richtigen Ordner bereits installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode ist noch nicht vorhanden und wird heruntergeladen.
' >> ~/Desktop/logVSC.txt
curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
unzip ~/Downloads/vsc.zip -d /Applications
rm ~/Downloads/vsc.zip
if [ -e "$file" ]
then echo 'Meldung: VSCode wurde erfolgreich installiert. 
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation von VSCode ist ein Fehler aufgetreten!
' >> ~/Desktop/logVSC.txt
fi
fi

# Compiler vorhanden? Wenn nein installieren und Eintrag in logdatei
echo 'Compiler wird überprüft bzw. installiert...'
command xcode-select --install
if (( $? == 0))
then echo 'Meldung: Compiler fehlt und wird installiert. -> externes Installationsmenü sollte erschienen sein!
' >> ~/Desktop/logVSC.txt
else 
clang --version
if (( $? == 0))
then echo 'Meldung: Compiler bereits installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation vom Compiler ist ein Fehler aufgetreten! Falls neu installiert ggf. falsche Fehlermeldung.
' >> ~/Desktop/logVSC.txt
fi
fi

# Umgebungsvariable hinzufügen um code im Terminal zu nutzen und Eintrag in logdatei
echo 'Umgebungsvariable wird hinzugefügt...'
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
if (( $? == 0))
then echo 'Meldung: Umgebungsvariable wurde erfolgreich hinzugefügt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Umgebungsvariable konnte nicht hinzugefügt werden!
' >> ~/Desktop/logVSC.txt
fi

# Profil aktualisieren um neue Umgebungsvariable nutzen zu können
source ~/.bash_profile

# Wenn VSCode Ordner nicht vorhanden, dann erstellen
file=~/Library/Application\ Support/Code
if [ -d "$file" ]
then ''
else mkdir ~/Library/Application\ Support/Code
mkdir ~/Library/Application\ Support/Code/User
fi

# Falls alte settings.json gefunden, dann löschen und in logdatei eintragen
file=~/Library/Application\ Support/Code/User/settings.json
if [ -e "$file" ] 
then echo 'Meldung: Alte settings.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/Library/Application\ Support/Code/User/settings.json
if [ -e "$file" ]
then echo 'Fehler: Alte settings.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte settings.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte settings.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi

# neue settings.json erstellen
curl -o ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/settings.json

# Prüfung ob Datei erstellt werden konnte
file=~/Library/Application\ Support/Code/User/settings.json
if [ -e "$file" ] 
then echo 'Meldung: Neue settings.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue settings.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi

# Prüfen ob launch.json vorhanden, wenn ja löschen und Eintrag in logdatei
file=~/Library/Application\ Support/Code/User/launch.json
if [ -e "$file" ] 
then echo 'Meldung: Alte launch.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/Library/Application\ Support/Code/User/launch.json
if [ -e "$file" ]
then echo 'Fehler: Alte launch.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte launch.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte launch.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi

# neue launch.json erstellen
curl -o ~/Library/Application\ Support/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/launch.json

# Prüfung ob Datei erstellt werden konnte
file=~/Library/Application\ Support/Code/User/launch.json
if [ -e "$file" ] 
then echo 'Meldung: Neue launch.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue launch.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi

# Prüfen ob alte tasks.json da, wenn ja löschen und in logdatei eintragen
file=~/Library/Application\ Support/Code/User/tasks.json
if [ -e "$file" ] 
then echo 'Meldung: Alte tasks.json wurden gefunden.
' >> ~/Desktop/logVSC.txt
rm ~/Library/Application\ Support/Code/User/tasks.json
if [ -e "$file" ]
then echo 'Fehler: Alte tasks.json konnten nicht gelöscht werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte tasks.json konnten erfolgreich gelöscht werden.
' >> ~/Desktop/logVSC.txt
fi
else echo 'Meldung: Alte tasks.json wurden nicht gefunden.
' >> ~/Desktop/logVSC.txt
fi

# neue tasks.json erstellen
curl -o ~/Library/Application\ Support/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/tasks.json

# Prüfung ob Datei erstellt werden konnte
file=~/Library/Application\ Support/Code/User/tasks.json
if [ -e "$file" ] 
then echo 'Meldung: Neue tasks.json wurden erfolgreich erstellt.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Neue tasks.json konnten nicht erstellt werden.
' >> ~/Desktop/logVSC.txt
fi

# Die Erweiterung code-runner installieren und in logdatei eintragen
code --install-extension formulahendry.code-runner
if (( $? == 0))
then echo 'Meldung: Die Extension Code-Runner wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension Code-Runner trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi

# Die Erweiterung C/C++ installieren und in logdatei eintragen
code --install-extension ms-vscode.cpptools
if (( $? == 0))
then echo 'Meldung: Die Extension C/C++ wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension C/C++ trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi

# Die Erweiterung liveshare installieren und in logdatei eintragen
code --install-extension ms-vsliveshare.vsliveshare-pack
if (( $? == 0))
then echo 'Meldung: Die Extension Live Share wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension Live Share trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi

# Die Erweiterung lldb installieren und in logdatei eintragen
code --install-extension vadimcn.vscode-lldb
if (( $? == 0))
then echo 'Meldung: Die Extension lldb Compiler wurde erfolgreich installiert.
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Bei der Installation der Extension lldb Compiler trat ein Fehler.
' >> ~/Desktop/logVSC.txt
fi

# Wenn Ordner nicht vorhanden, dann erstellen
file=~/Documents/C_Uebung
if [ -d "$file" ]
then ''
else mkdir ~/Documents/C_Uebung
fi

# Wenn Datei vorhanden, löschen
file= ~/Documents/C_Uebung/testprog.c
if [ -e "$file" ] 
then rm ~/Documents/C_Uebung/testprog.c
fi

# Testprogramm in C erstellen
curl -o ~/Documents/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/testprog.c

# Prüfen ob Datei vorhanden, wenn ja löschen
file= ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace
if [ -e "$file" ] 
then rm ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace
fi

# Workspace erstellen
echo '{
	"folders": [
		{
			"path": "../../../../Documents/C_Uebung"
		}
	]
}' >> ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace

# Prüfen ob Datei vorhanden, wenn ja löschen
file= ~/Desktop/C_Uebung.code-workspace
if [ -e "$file" ] 
then rm ~/Desktop/C_Uebung.code-workspace
fi

# Verknüpfung zum Workspace auf dem Desktop erstellen -> kann später überall hin verschoben werden
ln -s ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace ~/Desktop/C_Uebung.code-workspace

# Ausgabe im Terminal
echo 'Installation beendet! Das Terminal kann jetzt geschlossen werden.'

# Ende Installation und Ende logdatei
echo 'Installation beendet!
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt

# Die logdatei öffnen
open ~/Desktop/logVSC.txt

# 5 Sekunden warten, bevor nächste Zeile bearbeitet wird
sleep 5

# exit 0 ersetz killall Terminal-> Terminal wird so nicht mehr automatisch beendet
exit 0 
