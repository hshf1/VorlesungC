#####################################
#     VSCode Installation für MacOS #
# Hochschule Hannover - Vorlesung C #
#    zuletzt geändert am 01.01.2023 #
#####################################

# zum installieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/beta/vscodeosx.sh | bash 

# zum deinstallieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/beta/vscodeosx.sh | uninstall=true bash 

if [ "$uninstall" = "true" ]; then

    #### Beginn Deinstallation, wenn uninstall=true ####
    
    # Setzen der Verwendung als Variable
    usageinfo="Deinstallation"

    # Löschen von VSCode
    rm -R /Applications/Visual\ Studio\ Code.app
    # Löschen aller Einstellungen
    rm -R ~/Library/Application\ Support/Code
    # Löschen aller Extensions
    rm -R ~/.vscode

    #### Ende Deinstallation ####

else

    #### Beginn Installation, wenn uninstall!=true ####

    # Setzen der Verwendung als Variable
    usageinfo="Installation"

    # VSCode installieren, falls nicht vorhanden
    if [ -e "/Applications/Visual Studio Code.app" ]; then
    echo >nul
    else
        # Downloaden der Zip
        curl -o ~/Downloads/vsc.zip https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal
        # unzip mit Zielordner /Applications
        unzip ~/Downloads/vsc.zip -d /Applications
        # Nach unzip die zip in Downloads löschen
        rm -R ~/Downloads/vsc.zip
    fi

    # Compiler installieren, falls nicht vorhanden
    command xcode-select --install

    # Umgebungsvariable für die aktuelle Terminalsitzung hinzufügen und aktualisieren
    cat <<-EOF >>~/.bash_profile
	# Add Visual Studio Code (code)
	export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	EOF
    source ~/.bash_profile

    # VSCode Extension AddOn4VSC installieren - alles weitere folgt dort
    code --install-extension cako.addon4vsc
    
    #### Ende Installation ####
    
fi

# Output im Terminal
echo "#################################################################################################"
echo "$usageinfo beendet! Das Terminal kann jetzt geschlossen werden."
echo "#################################################################################################"

# exit script
exit 0
