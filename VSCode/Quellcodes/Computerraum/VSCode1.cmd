:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                          VSCode Installation for Computerraum ::
::                   created for Hochschule Hannover Vorlesung C ::
::       created by Can Kocak | 19.04.2022 | Hochschule Hannover ::
:: last modified by Can Kocak | 26.10.2022 | Hochschule Hannover ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: to install the configuration for VSCode open terminal (no need for being administrator) and execute following code (copy oneline without ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl to downloads file, %temp%\VSCode.cmd to start script, del to delete script after finished, EXIT /B to exit script and close terminal

:: dont show own commands in terminal
@echo off

:: set variables and paths
set mydate=%date%
set mytime=%time%
set logfile="U:\Systemordner\Desktop\logVSC.txt"
set settingsjson="U:\.vscode\Code\User\settings.json"
set launchjson="U:\.vscode\Code\User\launch.json"
set tasksjson="U:\.vscode\Code\User\tasks.json"
set vscerweiterung="C:\Program Files\Microsoft VS Code\bin\code"
set testprogcdatei="U:\C_Uebung\testprog.c"
set cuebungstart="U:\Systemordner\Desktop\C_Uebung.cmd"

:: determine systeminformation
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO set system_info=%%i %%j %%k

:: check internet connection
ping -n 1 google.de
if %errorlevel% == 0 (
    set ping_info="Meldung: Es konnte eine Verbindung zum Internet erkannt werden!"
) ELSE (
    set ping_info="Meldung: Es konnte keine Verbindung zum Internet erkannt werden!"
)

:: begin install

:: Stage: doing install

:: set environment variables
setx Path "%Path%;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"
:: create/overwrite settings.json and create direction if not exist
curl --create-dirs -o U:/.vscode/Code/User/settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/settings.json
:: create/overwrite launch.json
curl -o U:/.vscode/Code/User/launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/launch.json
:: create/overwrite tasks.json
curl -o U:/.vscode/Code/User/tasks.json https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Computerraum/tasks.json
:: create/overwrite testprog.c and create direction if not exist - usage is to test debugger and coderunner
curl --create-dirs -o U:/C_Uebung/testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/testprog.c
:: install vscode extension code-runner
call %vscerweiterung% --install-extension formulahendry.code-runner
:: install vscode extension C/C++
call %vscerweiterung% --install-extension ms-vscode.cpptools
:: install vscode extension Liveshare
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare
:: install vscode extension Liveshare-Audio
call %vscerweiterung% --install-extension ms-vsliveshare.vsliveshare-audio

if EXIST U:\.vscode if NOT EXIST U:\.vscode\extensions del U:\.vscode
if NOT EXIST U:\.vscode xcopy %USERPROFILE%\.vscode U:\ /E /H /C /I
del %USERPROFILE%\.vscode

:: change direction for extensions in environment varbiable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/vs/platform/environment/node/environmentService.ts#L121
setx VSCODE_EXTENSIONS U:\.vscode\extensions
:: change direction for global settings folder in environment variable for more information look https://github.com/microsoft/vscode/blob/a5f84617e22e6e32afc18a808828f1e233361244/src/paths.js
setx VSCODE_APPDATA U:\.vscode

:: create batchfile to start vsc with the folge C_Uebung and ensure the environment paths
echo :: change direction for extensions in environment varbiable > %cuebungstart%
echo setx VSCODE_EXTENSIONS U:\.vscode\extensions >> %cuebungstart%
echo :: change direction for global settings folder in environment variable >> %cuebungstart%
echo setx VSCODE_APPDATA U:\.vscode >> %cuebungstart%
echo start "" "C:\Program Files\Microsoft VS Code\Code.exe" -r U:\C_Uebung >> %cuebungstart%
echo EXIT /B >> %cuebungstart%

:: Stage: checking install

:: checking environment paths
echo %Path% > "%temp%\pathaktuell.txt"
findstr Dev-Cpp\MinGW64\bin "%temp%\pathaktuell.txt"
if %errorlevel% == 0 (
    set path_info="Meldung: Umgebungsvariable wurde erfolgreich gesetzt."
) ELSE (
    set path_info="Fehler: Umgebungsvariable konnte nicht gesetzt werden!"
)
del "%temp%\pathaktuell.txt"
if %VSCODE_EXTENSIONS% == "U:\.vscode\extensions" (
    set path2_info="Extensionsordner erfolgreich in Umgebungsvariable geändert."
) ELSE (
    set path2_info="Extensionsordner konnte nicht erfolgreich in Umgebungsvariable geändert werden."
)
if %VSCODE_APPDATA% == "U:\.vscode" (
    set path3_info="Globale Settingsordner erfolgreich in Umgebungsvariable geändert."
) ELSE (
    set path3_info="Globale Settingsordner konnte nicht erfolgreich in Umgebungsvariable geändert werden."
)

:: check if settings.json exist
if EXIST %settingsjson% (
    set settingsjson_info="Meldung: Neue settings.json wurde erfolgreich erstellt."
) ELSE (
    set settingsjson_info="Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!"
)

:: check if launch.json exist
if EXIST %launchjson% (
    set launchjson_info="Meldung: Neue launch.json wurde erfolgreich erstellt."
) ELSE (
    set launchjson_info="Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!"
)

:: check if tasks.json exist
if EXIST %tasksjson% (
    set tasksjson_info="Meldung: Neue tasks.json wurde erfolgreich erstellt."
) ELSE (
    set tasksjson_info="Fehler : Neue tasks.json konnte nicht erfolgreich erstellt werden!"
)

call %vscerweiterung% --list-extensions > "%temp%/listextension.txt"

:: install extension code-runner and write in logfile
findstr code-runner "%temp%\listextension.txt"
if %errorlevel% == 0 ( set coderunner_info="Meldung: Code-Runner Extension wurde/ist installiert."
) ELSE ( set coderunner_info="Fehler : Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten! )

:: install extension C/C++ and write in logfile
findstr cpptools "%temp%\listextension.txt"
if %errorlevel% == 0 ( set cpptools_info="Meldung: C/C++ Extension wurde/ist installiert."
) ELSE ( set cpptools_info="Fehler: Bei der Installation von der C/C++ Extension ist ein Fehler aufgetreten!" )

:: install extension LiveShare and write in logfile
findstr liveshare "%temp%\listextension.txt"
if %errorlevel% == 0 ( set liveshare_info="Meldung: Live Share Extension wurde/ist installiert."
) ELSE ( set liveshare_info="Fehler: Bei der Installation von der Live Share Extension ist ein Fehler aufgetreten!" )

:: install extension LiveShare-Audio and write in logfile
findstr liveshare-audio "%temp%\listextension.txt"
if %errorlevel% == 0 ( set liveshareaudio_info="Meldung: Live Share Audio Extension wurde/ist installiert."
) ELSE ( set liveshareaudio_info="Fehler: Bei der Installation von der Live Share Audio Extension ist ein Fehler aufgetreten!" )

:: end install

:: begin logfile

(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Installation von VSCode für Windows-Computerraum am %mydate% um %mytime%.
echo.
echo Die aktuelle Version gibt es hier:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md
echo.
echo Bei Problemen könnt ihr hier nach Lösungen schauen:
echo https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo.
echo Auf dem Desktop befindet sich der Shortcut C_Uebung.cmd, zum Programmieren doppelklick auf diese Datei.
echo Die Datei kann nach belieben verschoben werden. Sollte diese Datei nicht vorhanden sein ist die Installationsdatei erneut auszuführen.
echo.
echo Fehler sind an "Fehler :" zu erkennen. Sind keine Fehler vorhanden, dann kann diese Datei gelöscht werden.
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo.
echo Ausführendes Betriebssystem:
echo %system_info%
echo.
echo %path_info%
echo.
echo %path2_info%
echo.
echo %path3_info%
echo.
echo %settingsjson_info%
echo.
echo %launchjson_info%
echo.
echo %tasksjson_info%
echo.
echo %coderunner_info%
echo.
echo %cpptools_info%
echo.
echo %liveshare_info%
echo.
echo %liveshareaudio_info%
echo.
echo Installation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

:: popup install finished
echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs

:: open logfile
start "" %logfile%

:: exit script and close terminal
EXIT /B
