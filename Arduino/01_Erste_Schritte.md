# Erste Schritte

## Arduino programmieren in VSCode

VSCode wird hier vorausgesetzt. Sollte VSCode noch nicht installiert worden sein, so ist dies gemäß der [01_Installationsanleitung](https://github.com/hshf1/VorlesungC/blob/main/VSCode/01_Installationsanleitung.md) zu installieren. Weiterhin wird eine zusätzliche Erweiterung benötigt.

### PlatformIO IDE

<details>
<summary>Anleitung zur Installation von PlatformIO IDE</summary>

Die Erweiterung wird wie folgt installiert:

<img width="528" alt="platformio_1" src="https://user-images.githubusercontent.com/100713757/193317622-483bc10d-a7be-49bf-9865-1c8c2eba477d.png">

<img width="528" alt="platformio_2" src="https://user-images.githubusercontent.com/100713757/193317886-5ad05f5b-a911-4714-8e4e-6c67df77a358.png">

<img width="528" alt="platformio_3" src="https://user-images.githubusercontent.com/100713757/193318154-aa7daef9-21d6-4aa8-b9d4-427be67b0977.png">

<br />
Die Installation kann einen kleinen Augenblick dauern. Sobald die Installation abgeschlossen wurde, meldet VSCode dies und bittet um einen Neustart von VSCode.
  
</details>

<details>
<summary>Einführung PlatformIO IDE Oberfläche</summary>
  
Um auf die PlatformIO Oberfläche zuzugreifen, kann man entweder den Icon Links an der Seite nutzen:
  
<img width="528" alt="platformio_4" src="https://user-images.githubusercontent.com/100713757/193320960-05ff7e1d-ab86-4d18-8b54-5d8db75eccf5.png">

<img width="528" alt="platformio_5" src="https://user-images.githubusercontent.com/100713757/193321008-f7c53e52-3d0c-4a1c-83ab-65185d613eb6.png">

oder das kleine Häuschen unten an der Leiste:
  
<img width="528" alt="platformio_6" src="https://user-images.githubusercontent.com/100713757/193321087-4bf7e20d-1194-4010-9159-3871e2b316fd.png">

Es öffnet sich die Startseite von PlatformIO:
  
<img width="1045" alt="platformio_7" src="https://user-images.githubusercontent.com/100713757/193321145-52f0cde2-e5f0-4703-ae12-b8ab43cfa14a.png">

</details>

Je nach genutztem Chip wird ein Treiber benötigt. Bei der hier verwendeten ESP32-Wroom-32 wird (normalerweise) die CP2102 genutzt.

<details>
<summary>Treiber für CP210x</summary>

Treiber für CP210x können hier heruntergeladen und installiert werden: https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers?tab=downloads
  
</details>
  
<details>
<summary>Treiber für andere</summary>
  
Hier ist eine kleine Liste über weitere Treiber, falls nötig: https://www.number13.de/esp-32-treiber-driver-windows-mac-linux/  
  
</details>

Unter Devices ist einsehbar, ob PlatformIO bereits das Arduino Board erkennt:

<img width="1128" alt="platformio_8" src="https://user-images.githubusercontent.com/100713757/193403723-754494f9-a4f6-4e57-aab1-9387c5b9a3ae.png">

Ist nur ein Board angeschlossen und es wird hier angezeigt, so lädt es später automatisch in das richtige hoch beim Uploaden. Sind jedoch mehrere Boards angeschlossen oder das Board wird unter Devices nicht angezeigt, so kann später in der Datei "platformio.ini" das manuell bestimmt werden. 

<details>
<summary>Beispiel - platformio.ini mit manuelle Portzuweisung</summary>
 

>; PlatformIO Project Configuration File <br />
>;<br />
>;   Build options: build flags, source filter<br />
>;   Upload options: custom upload port, speed and extra flags<br />
>;   Library options: dependencies, extra library storages<br />
>;   Advanced options: extra scripting<br />
>;<br />
>; Please visit documentation for the other options and examples<br />
>; https://docs.platformio.org/page/projectconf.html<br />
><br />
>[env:esp32cam]<br />
>platform = espressif32<br />
>board = esp32cam<br />
>framework = arduino<br />
>upload_port = COM3 \\Manuelle Portzuweisung, Windows COMx, MacOs /dev/cu.usbserial-000x<br />
><br />
  
</details>

### Blinklicht Projekt erstellen

Diese Anleitung bezieht sich auf die ESP32-Wroom-32, wobei auch andere Arduino Boards genutzt werden können. Nur die jeweilige Boardauswahl und ggf. die interne PIN-Belegung unterscheiden sich. Die digitale Pin-Belegung ist in den Libraries einsehbar.

<details>
<summary>ESP32-Wroom-32 - Datasheet</summary>
  
https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf

</details>

Beim erstellen eines neuen Projektes ist der Projektname, der Boardtyp und der gewünschte Framework auszuwählen. In diesem Beispiel wird als Board "AI Thinker ESP32-CAM" genutzt (weitere Test's zeigten, dass wohl auch "NodeMCU-32S" funktioniert).
  
<img width="598" alt="platformio_8" src="https://user-images.githubusercontent.com/100713757/193326577-fe029476-c9c9-40db-b37a-498981a714e8.png">

Das Erstellen des ersten neuen Projektes kann einige Zeit in Anspruch nehmen, da die erforderlichen Datenbanken/Libraries für das Board und das Framework heruntergeladen werden.


  
## Arduino Cloud
  
Für die [Arduino Cloud](https://create.arduino.cc/iot/) muss zunächst ein Konto erstellt werden. Unter Dashboard stehen Widgets zur Verfügung. In diesem Beispiel werden die Widgets Status, Switch und Value genutzt. 


  
Unter Things sind die gewünschten Variablen zu erstellen. In der kostenfreien Version können 5 Variablen angelegt werden. In diesem Beispiel nutzen wir folgende Variablen:


  
Nun ist der Board auszuwählen:


  
Der Secret Key und die Geräte-ID sind zu speichern! Unter der Boardauswahl ist das Netzwerk festzulegen. Dort sind folgende Angaben notwendig:
SSID (Netzwerkname/WLan-name), Password (Netzwerkschlüssel/WLan-Password) und der Secret Key (der vorhin bei der Boardauswahl gespeichert werden sollte).
  

