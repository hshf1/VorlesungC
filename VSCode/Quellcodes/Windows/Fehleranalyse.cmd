:::::::::::::::::::::::::::::::::::::::
::  VSCode Fehleranalyse für Windows ::
:: Hochschule Hannover - Vorlesung C ::
::    zuletzt geändert am 19.11.2022 ::
:::::::::::::::::::::::::::::::::::::::

:: zur Fehleranalyse folgenden Code im Terminal ausführen (ohne ::)
::
:: curl -o %temp%\Fehleranalyse.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/Fehleranalyse.cmd && %temp%\Fehleranalyse.cmd && del %temp%\Fehleranalyse.cmd

:::: Beginn Fehleranalyse ::::

:: Auszuführende Befehle nicht nochmal im Terminal anzeigen
@echo off

:: LogFile Anfang
( echo ------------------------------------------------------------------------------------------------------
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
echo -------------------------------------------------------------------------------------------
echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"

:: Info zum Betriebssystem
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO ( echo Ausführendes Betriebssystem:
echo %%i %%j %%k & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"

:: Internetverbindung prüfen
ping -n 1 google.de
if %errorlevel% == 0 (
    ( echo Internetverbindung: Es konnte eine Verbindung zum Internet erkannt werden. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo Internetverbindung: Es konnte keine Verbindung zum Internet erkannt werden! (Fehlercode: 0002) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob choco installiert ist
choco -v
if %errorlevel% == 0 (
    ( echo Choco: Choco ist installiert und hat folgende Version: & choco -v & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo Choco: Choco konnte nicht gefunden werden! & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob Compiler installiert ist
gcc --version
if %errorlevel% == 0 (
    ( echo Compiler: Compiler ist installiert und hat folgende Version: & gcc -v & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo Compiler: Compiler ist nicht installiert oder konnte nicht erkannt werden! (Fehlercode: 0004) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob settings.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\settings.json" (
    ( echo settings.json: %APPDATA%\Code\User\settings.json wurde gefunden. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo settings.json: %APPDATA%\Code\User\settings.json konnte nicht gefunden werden! (Fehlercode: 0005) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob launch.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\launch.json" (
    ( echo launch.json: %APPDATA%\Code\User\launch.json wurde gefunden. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo launch.json: %APPDATA%\Code\User\launch.json konnte nicht gefunden werden! (Fehlercode: 0005) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob tasks.json vorhanden ist (Inhalt wird nicht überprüft!)
if EXIST "%APPDATA%\Code\User\tasks.json" (
    ( echo tasks.json: %APPDATA%\Code\User\tasks.json wurde gefunden. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo tasks.json: %APPDATA%\Code\User\tasks.json konnte nicht gefunden werden! (Fehlercode: 0005) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Liste installierter Extensions
del "%temp%\installedextensions.txt"
echo code --list-extensions --show-versions > "%temp%\installedextensions.txt"

:: Prüfen, ob VSCode Extension code-runner installiert ist
findstr code-runner "%temp%\installedextensions.txt"
if %errorlevel% == 0 (
    ( echo Code-Runner: Die Extension Code-Runner ist installiert. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo Code-Runner: Die Extension Code-Runner konnte nicht gefunden werden. (Fehlercode: 0006) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob VSCode Extension cpptools installiert ist
findstr cpptools "%temp%\installedextensions.txt"
if %errorlevel% == 0 (
    ( echo C/C++: Die Extension C/C++ ist installiert. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo C/C++: Die Extension C/C++ konnte nicht gefunden werden. (Fehlercode: 0006) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Prüfen, ob VSCode Extension LiveShare installiert ist
findstr liveshare "%temp%\installedextensions.txt"
if %errorlevel% == 0 (
    ( echo LiveShare: Die Extension LiveShare ist installiert. & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
) ELSE (
    ( echo LiveShare: Die Extension LiveShare konnte nicht gefunden werden. (Fehlercode: 0006) & echo. ) >> "%USERPROFILE%\Desktop\logVSC.txt"
)

:: Version der Extensions & Ende LogFile
( code --list-extensions --show-version & echo. & echo Fehleranalyse beendet!
echo ------------------------------------------------------------------------------------------- ) >> "%USERPROFILE%\Desktop\logVSC.txt"

:: LogFile anzeigen
start "" "%USERPROFILE%\Desktop\logVSC.txt"

:: Ausgabe vom Ende und exit skript
echo #################################################################################################
echo.
echo Fehleranalyse beendet! Das Terminal kann jetzt geschlossen werden.
echo.
echo #################################################################################################
EXIT /B

:::: Ende Fehleranalyse ::::
