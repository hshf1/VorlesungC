:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                          VSCode Installation for Computerraum ::
::                   created for Hochschule Hannover Vorlesung C ::
::       created by Can Kocak | 19.04.2022 | Hochschule Hannover ::
:: last modified by Can Kocak | 26.10.2022 | Hochschule Hannover ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: to install the configuration for VSCode open terminal (no need for being administrator) and execute following code (copy as oneline without ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl to downloads file, %temp%\VSCode.cmd to start script, del to delete script after finished, EXIT /B to exit script and close terminal

:: dont show used commands in terminal
@echo off

:::::::::: begin install ::::::::::

:: add to user environment variables
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B
setx PATH "C:\Program Files (x86)\Dev-Cpp\MinGW64\bin;%my_user_path%"
:: change direction for extensions in environment varbiable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/vs/platform/environment/node/environmentService.ts#L121
setx VSCODE_EXTENSIONS U:\.vscode\extensions
:: change direction for global settings folder in environment variable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/paths.js
setx VSCODE_APPDATA U:\.vscode
:: create/overwrite settings.json and create direction if not exist
curl --create-dirs -o U:/.vscode/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/settings.json
:: create/overwrite launch.json
curl -o U:/.vscode/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/launch.json
:: create/overwrite tasks.json
curl -o U:/.vscode/Code/User/tasks.json https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Computerraum/tasks.json
:: create/overwrite testprog.c and create direction if not exist - usage is to test debugger and coderunner
curl --create-dirs -o U:/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/testprog.c
:: set installpath for extensions
code --extensions-dir U:\.vscode\extensions
:: install vscode extension code-runner
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension formulahendry.code-runner
:: install vscode extension C/C++
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vscode.cpptools
:: install vscode extension Liveshare
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare
:: install vscode extension Liveshare-Audio
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare-audio
:: create batchfile to start vsc with the folge C_Uebung and ensure the environment paths
echo start "" "C:\Program Files\Microsoft VS Code\Code.exe" -r U:\C_Uebung > "U:\Systemordner\Desktop\C_Uebung.cmd"
echo EXIT /B >> "U:\Systemordner\Desktop\C_Uebung.cmd"

:::::::::: end install ::::::::::

:: popup install finished
echo msgbox"Installation beendet.", vbInformation, "Installation beendet!" > %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs

:: exit script and close terminal
EXIT /B
