#####################################
#     VSCode Installation für Linux #
# Hochschule Hannover - Vorlesung C #
#    zuletzt geändert am 21.11.2022 #
#####################################

# zum installieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/VSCode.sh | bash 

# zum deinstallieren folgenden Code im Terminal ausführen (ohne #)
#
# curl -sL https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/VSCode.sh | uninstall=true bash 

if [ "$uninstall" = "true" ]; then

    #### Beginn Deinstallation, wenn uninstall=true ####
    
    # Setzen der Verwendung als Variable
    usageinfo="Deinstallation"

    # Löschen von VSCode
    sudo snap remove code
    # Löschen aller Einstellungen
    rm -rf ~/.config/Code
    # Löschen aller Extensions
    rm -rf ~/.vscode
    # Löschen der Verknüpfung auf dem Bildschirm
    rm -rf ~/Desktop/C_Uebung.code-workspace

    #### Ende Deinstallation ####

else

    #### Beginn Installation, wenn uninstall!=true ####

    # Setzen der Verwendung als Variable
    usageinfo="Installation"

    # VSCode installieren, falls nicht vorhanden
    sudo snap install --classic code

    # Compiler installieren, falls nicht vorhanden
    sudo apt install gcc

    # VSCode als default Texteditor einstellen
    sudo update-alternatives --install /usr/bin/editor editor $(which code) 10

    # Umgebungsvariable für die aktuelle Terminalsitzung hinzufügen und aktualisieren
    cat <<-EOF >>~/.bash_profile
	# Add Visual Studio Code (code)
	export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	EOF
    source ~/.bash_profile

    # Erstellen/Überschreiben von settings.json und Ordner erstellen, wenn nicht existiert
    curl --create-dirs -o ~/.config/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/settings.json
    # Erstellen/Überschreiben von launch.json
    curl -o ~/.config/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/launch.json
    # Erstellen/Überschreiben von tasks.json
    curl -o ~/.config/Code/User/tasks.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/tasks.json
    # Erstellen/Überschreiben von testprog.c und Ordner erstellen, wenn nicht existiert
    curl --create-dirs -o ~/Documents/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Linux/testprog.c
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
    }" > ~/.config/Code/User/C_Uebung.code-workspace
    # Verknüpfung von C_Uebung.code-workspace auf Desktop - so kann es überall hinverschoben oder umbenannt werden
    ln -sf ~/.config/Code/User/C_Uebung.code-workspace ~/Desktop/C_Uebung.code-workspace

    #### Ende Installation ####

fi

# Output im Terminal
echo "
---------------------------------------------------------------

$usageinfo beendet! Das Terminal kann jetzt geschlossen werden.

---------------------------------------------------------------"

# exit script
exit 0
