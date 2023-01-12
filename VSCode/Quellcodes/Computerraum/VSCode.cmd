:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                          VSCode Installation für Computerraum ::
::                               Hochschule Hannover Vorlesung C ::
::                                zuletzt geändert am 11.01.2023 ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: zum installieren Terminal öffnen (keine Adminrechte nötig!) und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B

:: Auszuführende Befehle nicht nochmal im Terminal anzeigen
@echo off

:::: Beginn Installation ::::

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B
setx PATH "C:\Program Files (x86)\Dev-Cpp\MinGW64\bin;%my_user_path%"
:: change direction for extensions in environment varbiable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/vs/platform/environment/node/environmentService.ts#L121
setx VSCODE_EXTENSIONS U:\.vscode\extensions
:: change direction for global settings folder in environment variable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/paths.js
setx VSCODE_APPDATA U:\.vscode
:: create/overwrite settings.json and create direction if not exist
curl --create-dirs -o U:\.vscode\Code\User\settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/settings.json
:: create/overwrite launch.json
curl -o U:\.vscode\Code\User\launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/launch.json
:: create/overwrite tasks.json
curl -o U:\.vscode\Code\User\tasks.json https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Computerraum/tasks.json
:: create/overwrite testprog.c and create direction if not exist - usage is to test debugger and coderunner
curl --create-dirs -o U:\C_Uebung\testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/testprog.c

:: VSCode Extension installieren
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension cako.addon4vsc
:: Alternative zu Workspacefolder - Batchfile auf Desktop erstellen/überschreiben, C_Uebung.cmd kann überall verschoben und umbenannt werden
echo start "" "C:\Program Files\Microsoft VS Code\Code.exe" -r U:\C_Uebung > "U:\Systemordner\Desktop\C_Uebung.cmd"
echo EXIT /B >> "U:\Systemordner\Desktop\C_Uebung.cmd"

:::: Ende Installation ::::

:: Popup Skript beendet
echo msgbox"Installation beendet.", vbInformation, "Installation beendet!" > %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs

:: exit skript und Terminal schließen
EXIT /B
