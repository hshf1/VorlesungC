:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                               VSCode Installation for Windows ::
::                   created for Hochschule Hannover Vorlesung C ::
::       created by Can Kocak | 16.04.2022 | Hochschule Hannover ::
:: last modified by Can Kocak | 26.10.2022 | Hochschule Hannover ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: for install VSCode open elevated terminal (open as administrator) and execute following code (copy oneline without ::)
::
:: curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd -o %temp%\VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl downloads file, %temp%\VSCode.cmd start script, del delete script after finished, EXIT /B exit script and close terminal

:: for uninstall what this script installed open elevated terminal (open as administrator) and execute following code (copy oneline without ::)
::
:: curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd -o %temp%\VSCode.cmd && %temp%\VSCode.cmd uninstall && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl downloads file, %temp%\VSCode.cmd uninstall start script and give it the parameter uninstall for %~1, del delete script after finished, EXIT /B exit script and close terminal

:: Variablen setzen
@echo off
set mydate=%date%
set mytime=%time%
set logfile= %USERPROFILE%\Desktop\logVSC.txt
set settingsjson= %APPDATA%\Code\User\settings.json
set launchjson= %APPDATA%\Code\User\launch.json
set tasksjson= %APPDATA%\Code\User\tasks.json
set workspace= %APPDATA%\Code\User\C_Uebung.code-workspace
set vscerweiterung= "C:\Program Files\Microsoft VS Code\bin\code"

:: Betriebssystem in logdatei speichern
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %logfile%

:: Prüfen, ob als Admin gestartet, wenn nicht Skript beenden und in logdatei eintragen
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
(
echo Meldung: Das Programm wurde erfolgreich mit Adminrechten gestartet.
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Fehler : Das Programm wurde nicht mit Adminrechten gestartet! Das Programm wird vorzeitig beendet.
echo          Das Programm muss mit Adminrechten gestartet werden!
echo.
echo >CON) >> %logfile%
echo msgbox"Installation abgebrochen! Das Programm muss mit Adminrechten gestartet werden.",vbInformation , "Installation abgebrochen."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs
start "" %logfile%
EXIT /B
)

:: Internetverbindung prüfen und in logdatei eintragen
ping -n 1 google.de
if %errorlevel% == 0 (
(
echo Meldung: Es konnte eine Verbindung zum Internet erkannt werden!
echo.
echo >CON) >> %logfile%
) ELSE (
(
echo Fehler : Es konnte keine Verbindung zum Internet erkannt werden!
echo          Für die Installation ist eine Internetverbindung notwendig.
echo.
echo >CON) >> %logfile%
)

:: If Code (in Installationsanleitung) get parameter uninstall, then go to :UNINSTALL in this script
if /i "%~1"=="uninstall" (GOTO UNINSTALL)

:: Nach Choco suchen, wenn nicht vorhanden oder fehlerhaft installiert löschen und neu installieren
choco -v
if %errorlevel% == 0 (
set myVar=0
(
echo Meldung: Chocolatey ist bereits installiert! 
echo.
echo >CON) >> %logfile%
) ELSE (
set myVar=1
(echo Meldung: Chocolatey wurde nicht gefunden, die Installationsdatei wird heruntergeladen.
echo.
echo >CON) >> %logfile%
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%USERPROFILE%/AppData/Local/Temp/installChoco.ps1'))"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Meldung: Choco Installationsdatei wurde unter dem Namen installChoco.ps1 erfolgreich heruntergeladen!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Choco Installationsdatei konnte nicht gefunden/heruntergeladen werden!
echo.
echo >CON) >> %logfile%
)
rd /s /q C:\ProgramData\chocolatey
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%USERPROFILE%/AppData/Local/Temp/installChoco.ps1' %*"
del "%USERPROFILE%\AppData\Local\Temp\installChoco.ps1"
if EXIST %USERPROFILE%/AppData/Local/Temp/installChoco.ps1 (
(echo Fehler: Temporäre Choco Installationsdatei konnte nicht wieder gelöscht werden!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Temporäre Choco Installationsdatei wurde erfolgreich wieder gelöscht!
echo.
echo >CON) >> %logfile%
)
)

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden -> logdatei eintragen
setx Path "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
echo %Path% >> "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"
findstr chocolatey\lib\mingw "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"
IF %errorlevel% == 0 (
(echo Meldung: Umgebungsvariable wurde erfolgreich gesetzt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Umgebungsvariable konnte nicht gesetzt werden!
echo.
echo >CON) >> %logfile%
)
del "%USERPROFILE%\AppData\Local\Temp\pathaktuell.txt"

:: Prüfen ob choco vorhanden ist, manchmal fehlerhaft, wenn neu installiert
choco -v 
if %errorlevel% == 0 (
if %myVar% == 1 (
(echo Meldung: Choco wurde erfolgreich installiert!
echo.
echo >CON) >> %logfile%
)) ELSE (
(echo Fehler: Ein Fehler ist aufgetreten. Choco konnte nicht installiert werden!
echo.
echo >CON) >> %logfile%
)

:: Compiler und Debugger installieren mit choco und in logdatei eintragen
choco install mingw --version=8.1.0 -y
if ERRORLEVEL == 0 (
(echo Meldung: Compiler und Debugger wurden/sind erfolgreich installiert!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von Compiler und Debugger ist aufgetreten.
echo.
echo >CON) >> %logfile%
)

:: VScode installieren bzw. neu installieren, falls fehlerhaft und in logdatei eintragen
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (
(echo Meldung: VSCode wurde nicht gefunden. VSCode wird installiert.
echo. 
echo >CON) >> %logfile%
choco uninstall vscode vscode.install -y
)
choco install vscode -y
if ERRORLEVEL == 0 (
(echo Meldung: VSCode wurde/ist erfolgreich installiert!
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Ein Fehler bei der Installation von VSCode ist aufgetreten.
echo.
echo >CON) >> %logfile%
)

:: Alte settings.json suchen und löschen
if NOT EXIST %APPDATA%\Code\User (
mkdir %APPDATA%\Code\User\
)
if NOT EXIST %settingsjson% (
(echo Meldung: Alte settings.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte settings.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %settingsjson%
if NOT EXIST %settingsjson% (
(echo Meldung: Alte settings.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte settings.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)

:: Prüfen ob neue settings.json erstellt wurde und in logdatei eintrage
if EXIST %settingsjson% (
(echo Meldung: Neue settings.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Prüfen ob alte launch.json vorhanden ist und löschen -> logdatei eintragen
if NOT EXIST %launchjson% (
(echo Meldung: Alte launch.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte launch.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %launchjson%
if NOT EXIST %launchjson% (
(echo Meldung: Alte launch.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte launch.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)

:: Prüfen ob neue launch.json erstellt wurde und in logdatei eintragen
if EXIST %launchjson% (
(echo Meldung: Neue launch.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Prüfen, ob alte tasks.json vorhanden ist und löschen -> logdatei eintragen
if NOT EXIST %tasksjson% (
(echo Meldung: Alte tasks.json wurde nicht gefunden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Alte tasks.json wurde gefunden.
echo.
echo >CON) >> %logfile%
del %tasksjson%
if NOT EXIST %tasksjson% (
(echo Meldung: Alte tasks.json wurde erfolgreich entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Alte tasks.json konnte nicht erfolgreich entfernt werden!
echo.
echo >CON) >> %logfile%
)
)


:: Prüfen, ob neue tasks.json erstellt wurde und in logdatei eintragen
if EXIST %tasksjson% (
(echo Meldung: Neue tasks.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue tasks.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung code-runner installieren und in logdatei eintragen
call %vscerweiterung% --install-extension formulahendry.code-runner
if %errorlevel% == 0 (
(echo Meldung: Code-Runner Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung C/C++ installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vscode.cpptools
if %errorlevel% == 0 (
(echo Meldung: C/C++ Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der C/C++ Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung LiveShare installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare
if %errorlevel% == 0 (
(echo Meldung: Live Share Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Live Share Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Die Erweiterung LiveShareAudio installieren und in logdatei eintragen
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare-audio
if %errorlevel% == 0 (
(echo Meldung: Live Share Audio Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Bei der Installation von der Live Share Audio Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: Wenn Ordner nicht vorhanden, dann erstellen
if NOT EXIST %USERPROFILE%\Documents\C_Uebung\ (
mkdir %USERPROFILE%\Documents\C_Uebung\
)

:: Wenn Datei vorhanden, löschen
if EXIST %USERPROFILE%\Documents\C_Uebung\testprog.c (
del %USERPROFILE%\Documents\C_Uebung\testprog.c
)

:: Testprogramm in C erstellen
curl tbd

:: Prüfen ob Datei vorhanden, wenn ja löschen
if EXIST %workspace% (
del %workspace%
)

:: Workspace erstellen
(echo {
echo	"folders": [
echo		{
echo			"path": "../../../../Documents/C_Uebung"
echo		}
echo	]
echo }
echo >CON ) > %workspace%

:: Prüfen ob Datei vorhanden, wenn ja löschen
if EXIST "%USERPROFILE%\Desktop\C_Uebung.code-workspace" (
del "%USERPROFILE%\Desktop\C_Uebung.code-workspace"
)

:: Verknüpfung zum Workspace auf dem Desktop erstellen -> kann später überall hin verschoben werden
mklink "%USERPROFILE%\Desktop\C_Uebung.code-workspace" "%APPDATA%\Code\User\C_Uebung.code-workspace"
GOTO END

:UNINSTALL

:: Chocoverzeichnis entfernen
echo Choco wird entfernt...
rd /s /q "C:\ProgramData\chocolatey"
if NOT EXIST "C:\ProgramData\chocolatey" (
(echo Meldung: Das Verzeichnis von Choco wurde vollständig entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "C:\ProgramData\chocolatey"
if NOT EXIST "C:\ProgramData\chocolatey" (
(echo Meldung: Das Verzeichnis von Choco wurde vollständig entfernt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Das Verzeichnis von Choco konnte nicht entfernt werden.
echo.
echo >CON) >> %logfile%
)
)

:: VSCode deinstallieren
echo VSCode wird deinstalliert...
call "C:\Program Files\Microsoft VS Code\unins000.exe"
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" (
(echo Meldung: VSCode wurde erfolgreich deinstalliert.
echo. 
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: VSCode konnte nicht deinstalliert werden.
echo.
echo >CON) >> %logfile%
)

:: Alte Einstellungen entfernen und Verzeichnis löschen
echo Alte Einstellungen werden gesucht und entfernt...
rd /s /q "%APPDATA%\Code"
if NOT EXIST "%APPDATA%\Code" (
(echo Meldung: Alte Einstellungen wurden erfolgreich gelöscht.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "%APPDATA%\Code"
if NOT EXIST "%APPDATA%\Code" (
(echo Meldung: Alte Einstellungen wurden erfolgreich gelöscht.
echo.
echo >CON) >> %logfile% 
) ELSE (
(echo Fehler: Alte Einstellungen konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
)
)

:: VSCode Extensions entfernen
echo VSCode Extensions...
rd /s /q "%USERPROFILE%\.vscode"
if EXIST "%USERPROFILE%\.vscode" (
(echo Fehler: Die Extensions von VSCode konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
) ELSE (
rd /s /q "%USERPROFILE%\.vscode"
if EXIST "%USERPROFILE%\.vscode" (
(echo Fehler: Die Extensions von VSCode konnten nicht gelöscht werden.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Meldung: Die Extensions von VSCode konnten erfolgreich gelöscht werden.
echo.
echo >CON) >> %logfile%
)
)

:END
:: Deinstallation in PopUp anzeigen
echo msgbox"Deinstallation beendet!",vbInformation , "Deinstallation beendet."> %temp%\msg.vbs 
%Temp%\msg.vbs 
erase %temp%\msg.vbs










:: create logfile
(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Deinstallation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover ^| Zuletzt bearbeitet am 22.10.2022 VSCode Deinstallation für Windows.
echo.
echo Die aktuelle Version gibt es hier:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md
echo.
echo Bei Problemen könnt ihr hier nach Lösungen schauen:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo >CON) >> %logfile%
(
echo Deinstallation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

:: Logdatei anzeigen
start "" %logfile%

:: Terminal beenden
EXIT /B