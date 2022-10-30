#################################################################
#                                 VSCode Installation for MacOS #
#                   created for Hochschule Hannover Vorlesung C #
#       created by Can Kocak | 16.04.2022 | Hochschule Hannover #
# last modified by Can Kocak | 30.10.2022 | Hochschule Hannover #
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

#### begin uninstall if var is true ####

if [ "$uninstall" = "true" ]; then
    
    # set uninstall as var
    usageinfo="Deinstallation"

    # Löschen von VSCode und Ausgabe in der Logdatei
    rm -R /Applications/Visual\ Studio\ Code.app
    # Löschen aller Einstellungen und Ausgabe in der Logdatei
    rm -R ~/Library/Application\ Support/Code
    # Löschen aller Extensions und Ausgabe in der Logdatei
    rm -R ~/.vscode

    #### end uninstall ####

else

    #### begin install if not deinstall ####

    # set install as var
    usageinfo="Installation"

    # check vscode if not exist install
    if [ -e "/Applications/Visual Studio Code.app" ]; then
    echo >nul
    else
        # download/overwrite vsc.zip
        curl -o ~/Downloads/vsc.zip https://az764295.vo.msecnd.net/stable/dfd34e8260c270da74b5c2d86d61aee4b6d56977/VSCode-darwin-universal.zip
        # unzip with target Applications
        unzip ~/Downloads/vsc.zip -d /Applications
        # after unzip delete zipfile
        rm ~/Downloads/vsc.zip
    fi

    # install compiler if exist do nothing
    command xcode-select --install
    fi

    # set environmentpath
    cat <<-EOF >>~/.bash_profile
	# Add Visual Studio Code (code)
	export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	EOF

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
    # create/overwrite vscode workspace
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
    #### end install ####
fi

# output just in terminal
echo "$usageinfo beendet! Das Terminal kann jetzt geschlossen werden."

# exit script
exit 0
