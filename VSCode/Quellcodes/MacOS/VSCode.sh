#################################################################
#                                 VSCode Installation für MacOS #
#                             Hochschule Hannover - Vorlesung C #
#                                zuletzt geändert am 17.11.2022 #
#################################################################

# zum installieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | bash 

# zum deinstallieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/VSCode.sh | uninstall=true bash 

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
    # Löschen der Verknüpfung auf dem Bildschirm
    rm -R ~/Desktop/C_Uebung.code-workspace

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
        curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
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

    # Erstellen/Überschreiben von settings.json und Ordner erstellen, wenn nicht existiert
    curl --create-dirs -o ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/settings.json
    # Erstellen/Überschreiben von launch.json
    curl -o ~/Library/Application\ Support/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/launch.json
    # Erstellen/Überschreiben von tasks.json
    curl -o ~/Library/Application\ Support/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/tasks.json
    # Erstellen/Überschreiben von testprog.c und Ordner erstellen, wenn nicht existiert
    curl --create-dirs -o ~/Documents/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/MacOS/testprog.c
    # VSCode Extension code-runner installieren
    code --install-extension formulahendry.code-runner
    # VSCode Extension C/C++ installieren
    code --install-extension ms-vscode.cpptools
    # VSCode Extension Liveshare installieren
    code --install-extension ms-vsliveshare.vsliveshare
    # VSCode Extension Liveshare-Audio installieren
    code --install-extension ms-vsliveshare.vsliveshare-audio
    # VSCode Extension lldb installieren - nötig für Compiler
    code --install-extension vadimcn.vscode-lldb
    # Erstellen/Überschreiben von C_Uebung.code-workspace
    echo "
    {
        \"folders\": [
            {
	            \"path\": \"../../../../Documents/C_Uebung\"
            }
        ]
    }" > ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace
    # Verknüpfung von C_Uebung.code-workspace auf Desktop - so kann es überall hinverschoben oder umbenannt werden
    ln -sf ~/Library/Application\ Support/Code/User/C_Uebung.code-workspace ~/Desktop/C_Uebung.code-workspace
    
    #### Ende Installation ####
    
fi

# Output im Terminal
echo "$usageinfo beendet! Das Terminal kann jetzt geschlossen werden."

# exit script
exit 0
