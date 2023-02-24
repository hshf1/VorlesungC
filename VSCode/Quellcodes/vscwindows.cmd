:::::::::::::::::::::::::::::::::::::::
::   VSCode Installation für Windows ::
:: Hochschule Hannover - Vorlesung C ::
::    zuletzt geändert am 24.02.2023 ::
:::::::::::::::::::::::::::::::::::::::

:: Zum installieren Terminal als Adminstrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\vsc.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/vscwindows.cmd && %temp%\vsc.cmd install

:: Zum deinstallieren Terminal als Administrator ausführen! und folgende Zeile Code ausführen (ohne ::)
::
:: curl -o %temp%\vsc.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/vscwindows.cmd && %temp%\vsc.cmd uninstall

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
    :: Da alles im Hintergrund läuft hier was für den USER
    echo #################################################################################################>CON
    echo.>CON
    echo Choco wird installiert. Dies kann einige Minuten dauern. Bitte warten!>CON
    echo.>CON
    echo #################################################################################################>CON
    call %systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%temp%/installChoco.ps1' %*"
    del "%temp%\installChoco.ps1"
)

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B
setx PATH "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%my_user_path%"

:: Compiler und Debugger mit choco installieren (hier ist Version vorderfiniert, ggf. in Zukunft ändern)
choco install mingw --version=8.1.0 -y
:: choco install mingw -y müsste die aktuellste Version installieren, falls irgendwann 8.1.0 defekt

:: VSCode installieren bzw. neu installieren, falls fehlerhaft

/i "%~1"=="install" (
    if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (choco uninstall vscode vscode.install -y)
    choco install vscode -y
)

:: VSCode Extension AddOn4VSC - Rest wird darüber automatisch installiert
call code --install-extension cako.addon4vsc

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
