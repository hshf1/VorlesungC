#################################################################
#                                 VSCode Installation for MacOS #
#                   created for Hochschule Hannover Vorlesung C #
#       created by Can Kocak | 16.04.2022 | Hochschule Hannover #
# last modified by Can Kocak | 26.10.2022 | Hochschule Hannover #
#################################################################

# for install VSCode open terminal and execute following code
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | bash 
#
# load script and execute it with bash shell

# for uninstall VSCode open terminal end execute following code
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | uninstall=true bash 
#
# load script and execute it with bash shell while set parameter for this terminal

# get current date and time
dateinfo=$(date '+%F')
timeinfo=$(date '+%H:%M:%S')

# determine systeminformation
softwareinfo=$(sw_vers)

# check internet connection
ping -c 1 www.google.com
if (($? == 0)); then
    pinginfo="Meldung: Es konnte eine Verbindung zum Internet erkannt werden!"
else
    pinginfo="Meldung: Es konnte keine Verbindung zum Internet erkannt werden!"
fi

#### begin uninstall if var is true ####

if [ "$uninstall" = "true" ]; then
    
    # set uninstall as var for logfile
    usageinfo="Deinstallation"

    ## Stage: doing uninstall ##

    # Löschen von VSCode und Ausgabe in der Logdatei
    rm -R /Applications/Visual\ Studio\ Code.app
    # Löschen aller Einstellungen und Ausgabe in der Logdatei
    rm -R ~/Library/Application\ Support/Code
    # Löschen aller Extensions und Ausgabe in der Logdatei
    rm -R ~/.vscode

    ## Stage: checking uninstall ##

    # check if vscode still exist
    if [ -e "/Applications/Visual Studio Code.app" ]; then
        vscinfo="Fehler: VSCode konnte nicht entfernt werden."
    else
        vscinfo="Meldung: VSCode wurde erfolgreich entfernt."
    fi

    # check if jsonfolder with settings still exist
    if [ -e "~/Library/Application Support/Code" ]; then
        jsonfolder="Fehler: Alte Einstellungen konnten nicht entfernt werden."
    else
        jsonfolder="Meldung: Alte Einstellungen wurden erfolgreich entfernt."
    fi

    # check if extensions still exist
    if [ -e "~/.vscode" ]; then
        extensioninfo="Fehler: VSCode Extensions konnten nicht entfernt werden."
    else
        extensioninfo="Meldung: VSCode Extensions wurden erfolgreich entfernt."
    fi

    #### end uninstall ####

else

    #### begin install if not deinstall ####

    # set install as var for logfile
    usageinfo="Installation"

    ## Stage: doing install ##

    # check vscode if not exist install
    if [ -e "/Applications/Visual Studio Code.app" ]; then
        vscinfo2="Meldung: VSCode ist im richtigen Ordner bereits installiert."
    else
        # download/overwrite vsc.zip
        curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
        # unzip with target Applications
        unzip ~/Downloads/vsc.zip -d /Applications
        # after unzip delete zipfile
        rm ~/Downloads/vsc.zip
        # check again if vscode now exist
        if [ -e "/Applications/Visual Studio Code.app" ]; then
            vscinfo2="Meldung: VSCode wurde erfolgreich installiert."
        else
            vscinfo2="Fehler: Bei der Installation von VSCode ist ein Fehler aufgetreten!"
        fi
    fi

    # install compiler if exist do nothing
    command xcode-select --install
    if (($? == 0)); then
        gccinfo="Meldung: Compiler fehlt und wird installiert. -> externes Installationsmenü sollte erschienen sein!"
    else
        clang --version
        if (($? == 0)); then
            gccinfo="Meldung: Compiler bereits installiert."
        else
            gccinfo="Fehler: Bei der Installation vom Compiler ist ein Fehler aufgetreten!"
        fi
    fi

    # set environmentpath
    cat <<-EOF >>~/.bash_profile
	# Add Visual Studio Code (code)
	export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	EOF
    if (($? == 0)); then
        pathinfo="Meldung: Umgebungsvariable wurde erfolgreich hinzugefügt."
    else
        pathinfo="Fehler: Umgebungsvariable konnte nicht hinzugefügt werden!"
    fi

    # refresh terminal bash profile with new environmentpath
    source ~/.bash_profile

    # create/overwrite settings.json and create direction if not exist
    curl --create-dirs -o ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/settings.json
    # create/overwrite launch.json
    curl -o ~/Library/Application\ Support/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/launch.json
    # create/overwrite tasks.json
    curl -o ~/Library/Application\ Support/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/tasks.json
    # create/overwrite testprog.c and create direction if not exist - usage is to test debugger and coderunner
    curl --create-dirs -o ~/Documents/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/testprog.c
    # install vscode extension code-runner
    code --install-extension formulahendry.code-runner
    # install vscode extension C/C++
    code --install-extension ms-vscode.cpptools
    # install vscode extension Liveshare and Liveshare-Audio
    code --install-extension ms-vsliveshare.vsliveshare-pack
    # install vscode extension lldb (compiler)
    code --install-extension vadimcn.vscode-lldb
    # create/overwrite vscode workspace (var is set on the top)
    echo "
    {
        \"folders\": [
            {
	            \"path\": \"../../../../Documents/C_Uebung\"
            }
        ]
    }" > ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace
    # link vscode workspace on the desktop - then the desktop link can be moved anywhere
    ln -sf ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace ~/Desktop/C_Uebung.code-workspace

    ## Stage: checking install ##

    # check if settings.json exist
    if [ -e ~/Library/Application\ Support/Code/User/settings.json ]; then
        settingsinfo="Meldung: Neue settings.json wurden erfolgreich erstellt."
    else
        settingsinfo="Fehler: Neue settings.json konnten nicht erstellt werden."
    fi

    # check if launch.json exist
    if [ -e ~/Library/Application\ Support/Code/User/launch.json ]; then
        launchinfo="Meldung: Neue launch.json wurden erfolgreich erstellt."
    else
        launchinfo="Fehler: Neue launch.json konnten nicht erstellt werden."
    fi

    # check if tasks.json exist
    if [ -e ~/Library/Application\ Support/Code/User/tasks.json ]; then
        tasksinfo="Meldung: Neue tasks.json wurden erfolgreich erstellt."
    else
        tasksinfo="Fehler: Neue tasks.json konnten nicht erstellt werden."
    fi

    # create temporary textfile
    echo code --list-extensions > ~/Desktop/codelistextensions.txt

    # check if code-runner installed
    if [ "grep code-runner ~/Desktop/codelistextensionss.txt" ]; then
        coderunnerinfo="Meldung: Die Extension Code-Runner wurde erfolgreich installiert."
    else
        coderunnerinfo="Fehler: Bei der Installation der Extension Code-Runner trat ein Fehler."
    fi

    # check if C/C++ installed
    if [ "grep cpptools ~/Desktop/codelistextensions.txt" ]; then
        cppinfo="Meldung: Die Extension C/C++ wurde erfolgreich installiert."
    else
        cppinfo="Fehler: Bei der Installation der Extension C/C++ trat ein Fehler."
    fi

    # check if liveshare installed
    if [ "grep liveshare ~/Desktop/codelistextensions.txt" ]; then
        liveshareinfo="Meldung: Die Extension Live Share wurde erfolgreich installiert."
    else
        liveshareinfo="Fehler: Bei der Installation der Extension Live Share trat ein Fehler."
    fi

    # check if lldb installed
    if [ "grep code-runner ~/Desktop/codelistextensions.txt" ]; then
        lldbinfo="Meldung: Die Extension lldb Compiler wurde erfolgreich installiert."
    else
        lldbinfo="Fehler: Bei der Installation der Extension lldb Compiler trat ein Fehler."
    fi

    # delete temporary textfile
    rm -R ~/Desktop/codelistextensions.txt

    #### end install ####
fi

# write logfile with variables
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

Ausführendes Betriebssystem:
$softwareinfo 

$pinginfo
" >>~/Desktop/logVSC.txt
if [ "$uninstall" = "true" ]; then
echo "$vscinfo

$jsonfolder

$extensioninfo" >>~/Desktop/logVSC.txt
else
echo "$vscinfo2

$gccinfo

$pathinfo

$settingsinfo

$launchinfo

$tasksinfo

$coderunnerinfo

$cppinfo

$liveshareinfo

$lldbinfo" >>~/Desktop/logVSC.txt
fi
echo "
$usageinfo beendet!
-------------------------------------------------------------------------------------------
" >>~/Desktop/logVSC.txt

# open logfile
open ~/Desktop/logVSC.txt

# output just in terminal
echo "$usageinfo beendet! Das Terminal kann jetzt geschlossen werden."

# exit script
exit 0
