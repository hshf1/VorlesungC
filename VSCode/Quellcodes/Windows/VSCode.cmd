:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                               VSCode Installation for Windows ::
::                   created for Hochschule Hannover Vorlesung C ::
::       created by Can Kocak | 16.04.2022 | Hochschule Hannover ::
:: last modified by Can Kocak | 30.10.2022 | Hochschule Hannover ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: for install VSCode open elevated terminal (open as administrator) and execute following code (copy oneline without ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd && %temp%\VSCode.cmd && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl downloads file, %temp%\VSCode.cmd start script, del delete script after finished, EXIT /B exit script and close terminal

:: for uninstall what this script installed open elevated terminal (open as administrator) and execute following code (copy oneline without ::)
::
:: curl -o %temp%\VSCode.cmd https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Windows/VSCode.cmd && %temp%\VSCode.cmd uninstall && del %temp%\VSCode.cmd && EXIT /B
::
:: description: curl downloads file, %temp%\VSCode.cmd uninstall start script and give it the parameter uninstall for %~1, del delete script after finished, EXIT /B exit script and close terminal

:: dont show used commands in terminal
@echo off

:: set usage of script
if /i "%~1"=="uninstall" set usage_info="Deinstallation"
ELSE set usage_info="Installation"

:: check if root rights available else exit script
fsutil dirty query %systemdrive% >nul
if %errorlevel% == 0 (
echo. >nul
) ELSE (
set msgbox_text="abgebrochen! Das Programm muss mit Adminrechten gestartet werden."
set msgbox_info="abgebrochen."
GOTO END
)

:: If Code (from Installationsanleitung) get parameter uninstall, then go to :UNINSTALL in this script
if %usage_info%=="Deinstallation" (GOTO UNINSTALL)

:: search for choco install or update it
choco -v
if %errorlevel% == 0 (
echo. >nul
) ELSE (
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://community.chocolatey.org/install.ps1','%temp%/installChoco.ps1'))"
rd /s /q C:\ProgramData\chocolatey
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%temp%/installChoco.ps1' %*"
del "%temp%\installChoco.ps1"
)

:: Umgebungsvariable setzen um code zu nutzen und libraries zu finden -> logdatei eintragen
for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B
setx PATH "%ALLUSERSPROFILE%\chocolatey\bin;C:\ProgramData\chocolatey\lib\mingw\tools\install\mingw64\bin;%my_user_path%"

:: Compiler und Debugger installieren mit choco und in logdatei eintragen
choco install mingw --version=8.1.0 -y

:: VScode installieren bzw. neu installieren, falls fehlerhaft und in logdatei eintragen
if NOT EXIST "C:\Program Files\Microsoft VS Code\Code.exe" if EXIST "C:\ProgramData\chocolatey\choco.exe" (

choco uninstall vscode vscode.install -y
)
choco install vscode -y

:: create/overwrite settings.json and create direction if not exist
curl --create-dirs -o %APPDATA%\Code\User\settings.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/settings.json
:: create/overwrite launch.json
curl -o %APPDATA%\Code\User\launch.json https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/launch.json
:: create/overwrite tasks.json
curl -o %APPDATA%\Code\User\tasks.json https://github.com/hshf1/VorlesungC/blob/main/VSCode/Quellcodes/Computerraum/tasks.json
:: create/overwrite testprog.c and create direction if not exist - usage is to test debugger and coderunner
curl --create-dirs -o %USERPROFILE%\Documents\C_Uebung\testprog.c https://raw.githubusercontent.com/hshf1/VorlesungC/main/VSCode/Quellcodes/Computerraum/testprog.c

:: install vscode extension code-runner
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension formulahendry.code-runner
:: install vscode extension C/C++
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vscode.cpptools
:: install vscode extension Liveshare
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare
:: install vscode extension Liveshare-Audio
call "C:\Program Files\Microsoft VS Code\bin\code" --install-extension ms-vsliveshare.vsliveshare-audio

:: create/overwrite vscode workspace folder
(echo {
echo	"folders": [
echo		{
echo			"path": "../../../../Documents/C_Uebung"
echo		}
echo	]
echo }
echo >CON ) > "%APPDATA%\Code\User\C_Uebung.code-workspace"

:: delete workspacefolder on desktop if exist
if EXIST "%USERPROFILE%\Desktop\C_Uebung.code-workspace" (
del "%USERPROFILE%\Desktop\C_Uebung.code-workspace"
)

:: symlink for workspacefolder on the desktop
mklink "%USERPROFILE%\Desktop\C_Uebung.code-workspace" "%APPDATA%\Code\User\C_Uebung.code-workspace"

GOTO END

:UNINSTALL

:: delete chocolatey if exist
rd /s /q "C:\ProgramData\chocolatey"
:: uninstall VSCode if installed
call "C:\Program Files\Microsoft VS Code\unins000.exe"
:: delete VSCode APPDATA if exist
rd /s /q "%APPDATA%\Code"
:: delete VSCode extensions if exist
rd /s /q "%USERPROFILE%\.vscode"

:END
:: show end in popup
echo msgbox"%usage_info% %msgbox_text%",vbInformation , "%usage_info% %msgbox_info%" > %temp%\msg.vbs 
%temp%\msg.vbs 
erase %temp%\msg.vbs

:: exit script and close terminal
EXIT /B
