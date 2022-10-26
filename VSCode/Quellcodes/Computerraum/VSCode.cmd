:: nur testfile! nicht nutzen!

:: setx VSCODE_EXTENSIONS U:\.vscode will be settings there too?
:: setx VSCODE_APPDATA U\Code

:: @echo off prevent showing all code in terminal
@echo off
set mydate=%date%
set mytime=%time%
set logfile="U:\Systemordner\Desktop\logVSC.txt"
set settingsjson="U:\.vscode\Code\User\settings.json"
set launchjson="U:\.vscode\Code\User\launch.json"
set tasksjson="U:\.vscode\Code\User\tasks.json"
set vscerweiterung="C:\Program Files\Microsoft VS Code\bin\code"
set testprogcdatei="U:\C_Uebung\testprog.c"
set cuebungstart="U:\Systemordner\Desktop\C_Uebung.cmd"

(
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo Logfile zur Windows-Computerraum-Installation am %mydate% um %mytime%.
echo. 
echo Hochschule Hannover
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
echo >CON) >> %logfile%

:: determine OS and writing in logfile
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO (
echo Meldung: Ausführendes System: %%i %%j %%k
echo.
echo >CON) >> %logfile%

:: set environment variables
setx Path "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Dev-Cpp\MinGW64\bin"
echo %Path% >> "%temp%\pathaktuell.txt"
findstr Dev-Cpp\MinGW64\bin "%temp%\pathaktuell.txt"
IF %errorlevel% == 0 (
(echo Meldung: Umgebungsvariable wurde erfolgreich gesetzt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Umgebungsvariable konnte nicht gesetzt werden!
echo.
echo >CON) >> %logfile%
)
del "%temp%\pathaktuell.txt"

setx VSCODE_EXTENSIONS U:\.vscode\extensions
setx VSCODE_APPDATA U:\.vscode

echo Alte Einstellungen werden gesucht und ersetzt/erstellt...
if NOT EXIST "U:\.vscode\Code\User" (
mkdir "U:\.vscode\Code\User\"
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

if EXIST %settingsjson% (
(echo Meldung: Neue settings.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue settings.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

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

if EXIST %launchjson% (
(echo Meldung: Neue launch.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler: Neue launch.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

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


if EXIST %tasksjson% (
(echo Meldung: Neue tasks.json wurde erfolgreich erstellt.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler : Neue tasks.json konnte nicht erfolgreich erstellt werden!
echo.
echo >CON) >> %logfile%
)

:: install extension code-runner and write in logfile
call %vscerweiterung% --install-extension formulahendry.code-runner
if %errorlevel% == 0 (
(echo Meldung: Code-Runner Extension wurde/ist installiert.
echo.
echo >CON) >> %logfile%
) ELSE (
(echo Fehler : Bei der Installation von der Code-Runner Extension ist ein Fehler aufgetreten!
echo.
echo >CON) >> %logfile%
)

:: install extension C/C++ and write in logfile
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

:: install extension LiveShare and write in logfile
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

:: install extension LiveShare-Audio and write in logfile
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

:: create folder if not exist
if not exist "U:\C_Uebung\" mkdir U:\C_Uebung

:: delete file if exist
if EXIST "U:\C_Uebung\testprog.c" del U:\C_Uebung\testprog.c

:: create file with following content 
echo #include ^<stdio.h^> >> %testprogcdatei%
echo. >> %testprogcdatei%
echo int main(){ >> %testprogcdatei%
echo    int x = 0; >> %testprogcdatei%
echo    x++; >> %testprogcdatei%
echo    printf("Hello World! x = %%d\n", x); >> %testprogcdatei%
echo } >> %testprogcdatei%

:: delete file if exist
if EXIST "U:\Systemordner\Desktop\C_Uebung.cmd" del U:\Systemordner\Desktop\C_Uebung.cmd

:: create batch to open folder in VSCode (in process)
:: echo if NOT EXIST "%USERPROFILE%\.vscode\installiert.txt" ( >> %cuebungstart%
:: echo curl https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/VSCodeCR.cmd -o %temp%\VSCodeCR.cmd ^&^& %temp%\VSCodeCR.cmd ^&^& del %temp%\VSCodeCR.cmd ^&^& EXIT /B >> %cuebungstart%
:: echo ) >> %cuebungstart%
echo start "" "C:\Program Files\Microsoft VS Code\Code.exe" -r U:\C_Uebung >> %cuebungstart%
echo EXIT /B >> %cuebungstart%

echo. > "%USERPROFILE%\.vscode\installiert.txt"

(
echo Installation beendet!
echo ---------------------------------------------------------------------------------------------------------------------------------------------------------
echo >CON) >> %logfile%

echo msgbox"Installation beendet.",vbInformation , "Installation beendet!"> %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs
start "" %logfile%
EXIT /B
