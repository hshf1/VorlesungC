:::::::::::::::::::::::::::::::::::::::
::   VSCode Installation für Windows ::
:: Hochschule Hannover - Vorlesung C ::
::    zuletzt geändert am 20.11.2022 ::
:::::::::::::::::::::::::::::::::::::::

:: Zum installieren Terminal als Adminstrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd | cmd>nul

:: Zum deinstallieren Terminal als Administrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd && %temp%\VSCode.cmd uninstall && del %temp%\VSCode.cmd

:: Auszuführende Befehle nicht nochmal im Terminal anzeigen
@echo off

:: Prüfen, ob Terminal als Administrator gestartet wurde, sonst abbrechen
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
    echo. >nul
) ELSE (
    :: Ausgabe vom Abbruch und exit skript
    echo #################################################################################################>CON
    echo.>CON
    echo Das Programm konnte nicht gestartet werden! Das Terminal muss als Administrator gestartet werden!>CON
    echo.>CON
    echo #################################################################################################>CON
    EXIT /B
)

:: Prüfen ob es installieren oder deinstallieren soll
if /i "%~1"=="uninstall" (GOTO UNINSTALL)

:::: Beginn Installation ::::

:: installiere choco, wenn nicht vorhanden
choco -v
if %errorlevel% == 0 (
    echo. >nul
) ELSE (
    call %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%temp%/installChoco.ps1'))"
    rd /s /q C:\ProgramData\chocolatey
    call %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%temp%/installChoco.ps1' %*"
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
call code --install-extension formulahendry.code-runner
:: VSCode Extension C/C++ installieren
call code --install-extension ms-vscode.cpptools
:: VSCode Extension Liveshare installieren
call code --install-extension ms-vsliveshare.vsliveshare
:: VSCode Extension Liveshare-Audio installieren
call code --install-extension ms-vsliveshare.vsliveshare-audio

:: Erstellen/Überschreiben von C_Uebung.code-workspace
(echo {
echo	"folders": [
echo		{
echo			"path": "../../../../Documents/C_Uebung"
echo		}
echo	]
echo }
echo ) > "%APPDATA%\Code\User\C_Uebung.code-workspace"

:: löschen von C_Uebung.code-workspace auf dem Desktop, falls vorhanden
if EXIST "%USERPROFILE%\Desktop\C_Uebung.code-workspace" (
del "%USERPROFILE%\Desktop\C_Uebung.code-workspace"
)

:: Verknüpfung von C_Uebung.code-workspace auf Desktop, so kann es überall hin verschoben oder umbenannt werden
mklink "%USERPROFILE%\Desktop\C_Uebung.code-workspace" "%APPDATA%\Code\User\C_Uebung.code-workspace"

:: Ausgabe vom Ende und exit skript
echo #################################################################################################>CON
echo.>CON
echo Installation beendet! Das Terminal kann jetzt geschlossen werden.>CON
echo.>CON
echo #################################################################################################>CON
EXIT /B

:::: Ende Installation ::::

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

:: Ausgabe vom Ende und exit skript
echo #################################################################################################>CON
echo.>CON
echo Deinstallation beendet! Das Terminal kann jetzt geschlossen werden.>CON
echo.>CON
echo #################################################################################################>CON
EXIT /B

:::: Ende Deinstallation ::::
