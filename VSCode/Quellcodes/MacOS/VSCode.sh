#################################################################
#                                 VSCode Installation for MacOS #
#                   created for Hochschule Hannover Vorlesung C #
#       created by Can Kocak | 16.04.2022 | Hochschule Hannover #
# last modified by Can Kocak | 22.10.2022 | Hochschule Hannover #
#################################################################

# get current date and time 
dateinfo=$(date '+%F')
timeinfo=$(date '+%H:%M:%S')

# check if do install or uninstall
if [ "$uninstall" = "true" ]; then
	usageinfo="Deinstallation"
else
	usageinfo="Installation"
fi

# determine systeminformation
softwareinfo=$(sw_vers)

# check internet connection
ping -c 1 www.google.com
if (($? == 0)); then
	pinginfo=""
else
	pinginfo=""
fi

#### begin uninstall if var is true ####

if [ "$uninstall" = "true" ]; then

	## Stage: doing uninstall ##

	# Löschen von VSCode und Ausgabe in der Logdatei
	rm -R /Applications/Visual\ Studio\ Code.app
	# Löschen aller Einstellungen und Ausgabe in der Logdatei
	rm -R ~/Library/Application\ Support/Code
	# Löschen aller Extensions und Ausgabe in der Logdatei
	rm -R ~/.vscode

	## Stage: checking uninstall ##

	# rm -R /Applications/Visual\ Studio\ Code.app
	if [ -e "/Applications/Visual Studio Code.app" ]; then
		vscodeinfo="Fehler: VSCode konnte nicht entfernt werden."
	else
		vscodeinfo="Meldung: VSCode wurde erfolgreich entfernt."
	fi

	# rm -R ~/Library/Application\ Support/Code
	file=~/Library/Application\ Support/Code
	if [ -e "$file" ]; then
		jsonfolder="Fehler: Alte Einstellungen konnten nicht entfernt werden."
	else
		jsonfolder="Meldung: Alte Einstellungen wurden erfolgreich entfernt."
	fi

	# rm -R ~/.vscode
	file=~/.vscode
	if [ -e "$file" ]; then
		extensioninfo="Fehler: VSCode Extensions konnten nicht entfernt werden."
	else
		extensioninfo="Meldung: VSCode Extensions wurden erfolgreich entfernt."
	fi

	# Ausgabe im Terminal
	echo 'Deinstallation beendet! Das Terminal kann nun geschlossen werden.'

	#### end uninstall ####

else

	#### begin install if not deinstall ####

	## Stage: doing install ##

	# Abfrage, ob VSCode vorhanden, wenn nicht -> Download und Installation mit Eintrag in logdatei
	file=/Applications/Visual\ Studio\ Code.app
	if [ -e "$file" ]; then
		vscinfo="Meldung: VSCode ist im richtigen Ordner bereits installiert."
	else
		vscinfo="Meldung: VSCode ist noch nicht vorhanden und wird heruntergeladen."
		curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
		unzip ~/Downloads/vsc.zip -d /Applications
		rm ~/Downloads/vsc.zip
		if [ -e "$file" ]; then
			vscinfo2="Meldung: VSCode wurde erfolgreich installiert."
		else
			vscinfo2="Fehler: Bei der Installation von VSCode ist ein Fehler aufgetreten!"
		fi
	fi

	# Compiler vorhanden? Wenn nein installieren und Eintrag in logdatei
	command xcode-select --install
	if (($? == 0)); then
		gccinfo="Meldung: Compiler fehlt und wird installiert. -> externes Installationsmenü sollte erschienen sein!"
	else
		clang --version
		if (($? == 0)); then
			gccinfo="Meldung: Compiler bereits installiert."
		else
			gccinfo="Fehler: Bei der Installation vom Compiler ist ein Fehler aufgetreten! Falls neu installiert ggf. falsche Fehlermeldung."
		fi
	fi

	# Umgebungsvariable hinzufügen um code im Terminal zu nutzen und Eintrag in logdatei
	cat <<-EOF >>~/.bash_profile
	# Add Visual Studio Code (code)
	export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	EOF
	if (($? == 0)); then
		pathinfo="Meldung: Umgebungsvariable wurde erfolgreich hinzugefügt."
	else
		pathinfo="Fehler: Umgebungsvariable konnte nicht hinzugefügt werden!"
	fi

	# Profil aktualisieren um neue Umgebungsvariable nutzen zu können
	source ~/.bash_profile

	# create/overwrite settings.json and create direction if not exist
	curl --create-dirs -o ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/settings.json
	# create/overwrite launch.json
	curl -o ~/Library/Application\ Support/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/launch.json
	# create/overwrite tasks.json
	curl -o ~/Library/Application\ Support/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/tasks.json
	# create/overwrite testprog.c and create direction if not exist - usage to test debugger and coderunner
	curl --create-dirs -o ~/Documents/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/testprog.c

	# install vscode extension code-runner
	code --install-extension formulahendry.code-runner
	# install vscode extension C/C++
	code --install-extension ms-vscode.cpptools
	# install vscode extension Liveshare and Liveshare-Audio
	code --install-extension ms-vsliveshare.vsliveshare-pack
	# install vscode extension lldb (compiler)
	code --install-extension vadimcn.vscode-lldb

	# create/overwrite vscode workspace
	echo "{
	\"folders\": [
		{
			\"path\": \"../../../../Documents/C_Uebung\"
		}
	]
}" >~/Library/Application\ Support/Code/User/C_Uebung.code-workspace

	# link vscode workspace on the desktop - then the desktop link can be moved anywhere
	ln -sf ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace ~/Desktop/C_Uebung.code-workspace

	## Stage: checking install ##

	# Prüfung ob Datei erstellt werden konnte
	file=~/Library/Application\ Support/Code/User/settings.json
	if [ -e "$file" ]; then
		settingsinfo="Meldung: Neue settings.json wurden erfolgreich erstellt."
	else
		settingsinfo="Fehler: Neue settings.json konnten nicht erstellt werden."
	fi

	# Prüfung ob Datei erstellt werden konnte
	file=~/Library/Application\ Support/Code/User/launch.json
	if [ -e "$file" ]; then
		launchinfo="Meldung: Neue launch.json wurden erfolgreich erstellt."
	else
		launchinfo="Fehler: Neue launch.json konnten nicht erstellt werden."
	fi

	# Prüfung ob Datei erstellt werden konnte
	file=~/Library/Application\ Support/Code/User/tasks.json
	if [ -e "$file" ]; then
		tasksinfo="Meldung: Neue tasks.json wurden erfolgreich erstellt."
	else
		tasksinfo="Fehler: Neue tasks.json konnten nicht erstellt werden."
	fi

	# code --install-extension formulahendry.code-runner
	if (($? == 0)); then
		coderunnerinfo="Meldung: Die Extension Code-Runner wurde erfolgreich installiert."
	else
		coderunnerinfo="Fehler: Bei der Installation der Extension Code-Runner trat ein Fehler."
	fi

	# code --install-extension ms-vscode.cpptools
	if (($? == 0)); then
		cppinfo="Meldung: Die Extension C/C++ wurde erfolgreich installiert."
	else
		cppinfo="Fehler: Bei der Installation der Extension C/C++ trat ein Fehler."
	fi

	# code --install-extension ms-vsliveshare.vsliveshare-pack
	if (($? == 0)); then
		liveshareinfo="Meldung: Die Extension Live Share wurde erfolgreich installiert."
	else
		liveshareinfo="Fehler: Bei der Installation der Extension Live Share trat ein Fehler."
	fi

	# code --install-extension vadimcn.vscode-lldb
	if (($? == 0)); then
		lldbinfo="Meldung: Die Extension lldb Compiler wurde erfolgreich installiert."
	else
		lldbinfo="Fehler: Bei der Installation der Extension lldb Compiler trat ein Fehler."
	fi

	# Ausgabe im Terminal
	echo 'Installation beendet! Das Terminal kann jetzt geschlossen werden.'

#### end install ####
fi

# write logfile
echo "-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
Logfile zur $usageinfo von VSCode für MacOS am $dateinfo um $timeinfo.

Die aktuelle Version gibt es hier:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md

Bei Problemen könnt ihr hier nach Lösungen schauen:
https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.

Fehler sind an \"Fehler :\" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
-------------------------------------------------------------------------------------------

Meldung: Ausführendes System:
Meldung: Es konnte eine Verbindung zum Internet erkannt werden!

$usageinfo beendet!
-------------------------------------------------------------------------------------------
" >>~/Desktop/logVSC.txt

# open logfile
open ~/Desktop/logVSC.txt

# exit script
exit 0
