:::::::::::::::::::::::::::::::::::::::
::  VSCode Fehleranalyse für Windows ::
:: Hochschule Hannover - Vorlesung C ::
::    zuletzt geändert am 19.11.2022 ::
:::::::::::::::::::::::::::::::::::::::

:: zur Fehleranalyse folgenden Code im Terminal ausführen (ohne ::)
::
:: curl -o %temp%\Fehleranalyse.bat https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/Fehleranalyse.bat && %temp%\Fehleranalyse.bat>"%USERPROFILE%\Desktop\logVSC.txt" && del %temp%\Fehleranalyse.bat && start "" "%USERPROFILE%\Desktop\logVSC.txt"

:::: Beginn Fehleranalyse ::::

:: Auszuführende Befehle nicht nochmal im Terminal anzeigen
@echo off

:: LogFile Anfang
echo ------------------------------------------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------------
echo Logfile zur Fehleranalyse von VSCode für Windows am %date% um %time%. & echo.
echo Die meisten Probleme lassen sich beheben, indem die VSCode Installation erneut ausgeführt
echo wird. Es kann auch hilfreich sein, zuerst die Deinstallation auszuführen. & echo.
echo VSCode Installation: https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md & echo.
echo Einige Fehler können hier entdeckt werden und sind am Ende der Zeile mit einem Fehlercode bezeichnet.
echo Unter Fehlerbebehung: https://github.com/hshf1/VorlesungC/blob/main/VSCode/03_Fehlerbehebung.md
echo kann nach den Fehlercodes gesucht werden, um zu sehen, wie diese behoben werden können. & echo.
echo Datei- und Ordnernamen dürfen keine Umlaute oder Leerzeichen enthalten!
echo Zum Debuggen muss in VSCode ein Ordner geöffnet sein und keine einzelne Datei! & echo.
echo Bei anhaltenden oder neuen Problemen diese Datei per Mail an euren Dozenten schicken.
echo ------------------------------------------------------------------------------------------- & echo.

:: Info zum Betriebssystem
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO ( echo Ausführendes Betriebssystem:
echo %%i %%j %%k & echo. )

:: Internetverbindung prüfen
ping -n 1 google.de>NUL
if %errorlevel% == 0 (
    echo Internetverbindung: Es konnte eine Verbindung zum Internet erkannt werden. & echo.
) ELSE (
    echo Internetverbindung: Es konnte keine Verbindung zum Internet erkannt werden! ^(Fehlercode: 0002^) & echo.
)

:: Prüfen, ob choco installiert ist
choco -v>NUL
if %errorlevel% == 0 (
    echo Choco: Choco ist installiert und hat folgende Version: & choco -v & echo.
) ELSE (
    echo Choco: Choco konnte nicht gefunden werden! & echo.
)

:: Prüfen, ob VSCode installiert ist
call "C:\Program Files\Microsoft VS Code\bin\code" --version>NUL
if %errorlevel% == 0 (
    echo VSCode: VSCode ist installiert und hat folgende Version: & call "C:\Program Files\Microsoft VS Code\bin\code" --version & echo.
) ELSE (
    echo VSCode: VSCode ist nicht installiert oder konnte nicht gefunden werden! (Fehlercode: 0003^) & echo.
)

:: Prüfen, ob Compiler installiert ist
gcc --version>NUL
if %errorlevel% == 0 (
    echo Compiler: Compiler ist installiert und hat folgende Version: & gcc --version & echo.
) ELSE (
    echo Compiler: Compiler ist nicht installiert oder konnte nicht erkannt werden! ^(Fehlercode: 0004^) & echo.
)

:: Prüfen, ob settings.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\settings.json" (
    echo settings.json: %APPDATA%\Code\User\settings.json wurde gefunden. & echo.
) ELSE (
    echo settings.json: %APPDATA%\Code\User\settings.json konnte nicht gefunden werden! ^(Fehlercode: 0005^) & echo.
)

:: Prüfen, ob launch.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\launch.json" (
    echo launch.json: %APPDATA%\Code\User\launch.json wurde gefunden. & echo.
) ELSE (
    echo launch.json: %APPDATA%\Code\User\launch.json konnte nicht gefunden werden! ^(Fehlercode: 0005^) & echo.
)

:: Prüfen, ob tasks.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\tasks.json" (
    echo tasks.json: %APPDATA%\Code\User\tasks.json wurde gefunden. & echo.
) ELSE (
    echo tasks.json: %APPDATA%\Code\User\tasks.json konnte nicht gefunden werden! ^(Fehlercode: 0005^) & echo.
)

:: Liste installierter Extensions
if EXIST "%temp%\installedextensions.txt" del "%temp%\installedextensions.txt"
call "C:\Program Files\Microsoft VS Code\bin\code" --list-extensions>"%temp%\installedextensions.txt"

:: Prüfen, ob VSCode Extension code-runner installiert ist
findstr code-runner "%temp%\installedextensions.txt">NUL
if %errorlevel% == 0 (
    echo Code-Runner: Die Extension Code-Runner ist installiert. & echo. 
) ELSE (
    echo Code-Runner: Die Extension Code-Runner konnte nicht gefunden werden. (Fehlercode: 0006^) & echo.
)

:: Prüfen, ob VSCode Extension cpptools installiert ist
findstr cpptools "%temp%\installedextensions.txt">NUL
if %errorlevel% == 0 (
    echo C/C++: Die Extension C/C++ ist installiert. & echo.
) ELSE (
    echo C/C++: Die Extension C/C++ konnte nicht gefunden werden. (Fehlercode: 0006^) & echo.
)

:: Prüfen, ob VSCode Extension LiveShare installiert ist
findstr liveshare "%temp%\installedextensions.txt">NUL
if %errorlevel% == 0 (
    echo LiveShare: Die Extension LiveShare ist installiert. & echo.
) ELSE (
    echo LiveShare: Die Extension LiveShare konnte nicht gefunden werden. (Fehlercode: 0006^) & echo.
)

:: Version der Extensions & Ende LogFile
call "C:\Program Files\Microsoft VS Code\bin\code" --list-extensions --show-versions & echo. & echo Fehleranalyse beendet!
echo -------------------------------------------------------------------------------------------

:: LogFile anzeigen
:: start "" "%USERPROFILE%\Desktop\logVSC.txt"

:: Ausgabe vom Ende und exit skript
echo #################################################################################################>CON
echo.>CON
echo Fehleranalyse beendet! Das Terminal kann jetzt geschlossen werden.>CON
echo.>CON
echo #################################################################################################>CON
EXIT /B

:::: Ende Fehleranalyse ::::
