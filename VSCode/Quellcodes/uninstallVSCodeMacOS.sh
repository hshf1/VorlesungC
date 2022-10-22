sudo ''
echo 'Deinstallation VSCode'
echo '-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt
date '+Logfile zur Deinstallation am %d.%m.%Y um %H:%M:%S.' >> ~/Desktop/logVSC.txt
echo '
Hochschule Hannover 20.06.2022 V1.00 VSCode Deinstallation.

Die aktuelle Version gibt es hier:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md

Bei Problemen könnt ihr hier nach Lösungen schauen:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.

Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
-------------------------------------------------------------------------------------------

' >> ~/Desktop/logVSC.txt

echo 'Betriebssystem wird ermittelt...'
echo 'Meldung: Ausführendes System:' >> ~/Desktop/logVSC.txt
sw_vers >> ~/Desktop/logVSC.txt
echo '' >> ~/Desktop/logVSC.txt

echo 'Internetverbindung...'
ping -c 1 www.google.com
if (( $? == 0))
then echo 'Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
' >> ~/Desktop/logVSC.txt
else echo 'Fehler: Es konnte keine Verbindung zum Internet erkannt werden!
           Für die vollständige Installation ist eine Internetverbindung notwendig.
' >> ~/Desktop/logVSC.txt
fi

echo 'VSCode entfernen...'
rm -R /Applications/Visual\ Studio\ Code.app
file=/Applications/Visual\ Studio\ Code.app
if [ -e "$file" ]
then echo 'Fehler: VSCode konnte nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode wurde erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

echo 'Alte Einstellungen werden entfernt...'
rm -R ~/Library/Application\ Support/Code
file=~/Library/Application\ Support/Code
if [ -e "$file" ] 
then echo 'Fehler: Alte Einstellungen konnten nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: Alte Einstellungen wurden erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

echo 'Extensions werden deinstalliert...'
rm -R ~/.vscode
file=~/.vscode
if [ -e "$file" ]
then echo 'Fehler: VSCode Extensions konnten nicht entfernt werden.
' >> ~/Desktop/logVSC.txt
else echo 'Meldung: VSCode Extensions wurden erfolgreich entfernt.
' >> ~/Desktop/logVSC.txt
fi

echo 'Installation beendet!'
echo 'Installation beendet!
-------------------------------------------------------------------------------------------
' >> ~/Desktop/logVSC.txt
open ~/Desktop/logVSC.txt
sleep 5
killall Terminal
