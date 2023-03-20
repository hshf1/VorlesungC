:: Created 19.04.2022 by Can Kocak | Hochschule Hannover
:: last modified 20.03.2023 by Can Kocak | Hochschule Hannover

:: mit diesen Variablen könnte man rumspielen, um Erweiterungen und Einstellungen nicht erneut installieren zu müssen
:: Aufgrund der Erweiterung HSH_AddOn4VSC aber erstmal nicht nötig
:: setx VSCODE_EXTENSIONS
:: setx VSCODE_APPDATA U\Code

:: @echo off prevent showing all code in terminal
@echo off
set vscerweiterung="C:\Program Files\Microsoft VS Code\bin\code"

:: set environment variables
setx Path "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"

:: install extension HSH_AddOn4VSC
call %vscerweiterung% --install-extension cako.addon4vsc

echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs
EXIT /B
