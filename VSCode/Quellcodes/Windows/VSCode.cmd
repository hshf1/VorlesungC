:::::::::::::::::::::::::::::::::::::::
::   VSCode Installation für Windows ::
:: Hochschule Hannover - Vorlesung C ::
::    zuletzt geändert am 18.11.2022 ::
:::::::::::::::::::::::::::::::::::::::

:: Zum installieren Terminal als Adminstrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B

:: Zum deinstallieren Terminal als Administrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd && %temp%\VSCode.cmd uninstall && del %temp%\VSCode.cmd && EXIT /B

:: Auszuführende Befehle nicht nochmal im Terminal anzeigen
@echo off

:: Prüfen, ob Terminal als Administrator gestartet wurde, sonst abbrechen
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
    echo. >nul
) ELSE (
    set msgbox_text="abgebrochen! Das Programm muss mit Adminrechten gestartet werden."
    set msgbox_info="abgebrochen."
    GOTO END
)

:: Prüfen ob es installieren oder deinstallieren soll
if /i "%~1"=="uninstall" (GOTO UNINSTALL)

:::: Beginn Installation ::::

:: installiere choco, wenn nicht vorhanden
choco -v
if %errorlevel% == 0 (
    echo. >nul
) ELSE (
    %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%temp%/installChoco.ps1'))"
    rd /s /q C:\ProgramData\chocolatey
    %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%temp%/installChoco.ps1' %*"
    del "%temp%\installChoco.ps1"
)

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B
setx PATH "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%my_user_path%"

:: Compiler und Debugger mit choco installieren (hier ist Version vorderfiniert, ggf. in Zukunft ändern)
choco install mingw --version=8.1.0 -y
:: choco install mingw -y müsste die aktuellste Version installieren, falls irgendwann 8.1.0 defekt

:: VScode installieren bzw. neu installieren, falls fehlerhaft
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (choco uninstall vscode vscode.install -y)
choco install vscode -y

:: Erstellen/Überschreiben von settings.json und Ordner erstellen, falls nicht vorhanden
curl --create-dirs -o %APPDATA%\Code\User\settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/settings.json
:: Erstellen/Überschreiben von launch.json
curl -o %APPDATA%\Code\User\launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/launch.json
:: Erstellen/Überschreiben von tasks.json
curl -o %APPDATA%\Code\User\tasks.json https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Windows/tasks.json
:: Erstellen/Überschreiben von testprog.c und Ordner erstellen, falls nicht vorhanden
curl --create-dirs -o %USERPROFILE%\Documents\C_Uebung\testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/testprog.c

:: VSCode Extension code-runner installieren
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension formulahendry.code-runner
:: VSCode Extension C/C++ installieren
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vscode.cpptools
:: VSCode Extension Liveshare installieren
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare
:: VSCode Extension Liveshare-Audio installieren
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare-audio

:: Erstellen/Überschreiben von C_Uebung.code-workspace
(echo {
echo	"folders": [
echo		{
echo			"path": "../../../../Documents/C_Uebung"
echo		}
echo	]
echo }
echo >CON ) > "%APPDATA%\Code\User\C_Uebung.code-workspace"

:: löschen von C_Uebung.code-workspace auf dem Desktop, falls vorhanden
if EXIST "%USERPROFILE%\Desktop\C_Uebung.code-workspace" (
del "%USERPROFILE%\Desktop\C_Uebung.code-workspace"
)

:: Verknüpfung von C_Uebung.code-workspace auf Desktop, so kann es überall hin verschoben oder umbenannt werden
mklink "%USERPROFILE%\Desktop\C_Uebung.code-workspace" "%APPDATA%\Code\User\C_Uebung.code-workspace"

:::: Ende Installation ::::

GOTO END

:::: Beginn Deinstallation ::::

:UNINSTALL

:: choco Verzeichnis löschen
rd /s /q "C:\ProgramData\chocolatey"
:: VSCode deinstallieren
call "C:\Program Files\Microsoft VS Code\unins000.exe"
:: Einstellungen löschen
rd /s /q "%APPDATA%\Code"
:: VSCode Extensions löschen
rd /s /q "%USERPROFILE%\.vscode"

:::: Ende Deinstallation ::::

:END
:: Popup Anzeige Ende des Skriptes
echo msgbox"%msgbox_text%",vbInformation , "%msgbox_info%" > %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs

:: exit Skript
EXIT /B
