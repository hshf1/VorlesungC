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
echo -------------------------------------------------------------------------------------------
echo.
