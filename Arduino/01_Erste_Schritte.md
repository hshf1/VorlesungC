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

<details>
<summary>Automatische/Manuelle Portzuweisung</summary>

Unter Devices ist einsehbar, ob PlatformIO bereits das Arduino Board erkennt:

<img width="1128" alt="platformio_8" src="https://user-images.githubusercontent.com/100713757/193403723-754494f9-a4f6-4e57-aab1-9387c5b9a3ae.png">

Ist nur ein Board angeschlossen und es wird hier angezeigt, so lädt es später automatisch in das richtige hoch beim Uploaden. Sind jedoch mehrere Boards angeschlossen oder das Board wird unter Devices nicht angezeigt, so kann später in der Datei "platformio.ini" im Projekt das manuell bestimmt werden. 

<details>
<summary>Beispiel - platformio.ini mit manuelle Portzuweisung</summary>

>; PlatformIO Project Configuration File || das ; wird hier als Kommentarfunktion genutzt<br />
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
>upload_port = COM3 ;Manuelle Portzuweisung, Windows COMx, MacOs /dev/cu.usbserial-000x<br />
><br />
  
</details>

</details>

### Blinklicht Projekt erstellen

Diese Anleitung bezieht sich auf die ESP32-Wroom-32, wobei auch andere Arduino Boards genutzt werden können. Nur die jeweilige Boardauswahl und ggf. die interne PIN-Belegung unterscheiden sich. Die digitale Pin-Belegung ist in den Libraries einsehbar.

<details>
<summary>ESP32-Wroom-32 - Datasheet</summary>
  
https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf

</details>

Beim erstellen eines neuen Projektes ist der Projektname, der Boardtyp und der gewünschte Framework auszuwählen. In diesem Beispiel wird als Board "AI Thinker ESP32-CAM" genutzt (weitere Test's zeigten, dass wohl auch "NodeMCU-32S" funktioniert).
  
<img width="598" alt="platformio_9" src="https://user-images.githubusercontent.com/100713757/193326577-fe029476-c9c9-40db-b37a-498981a714e8.png">

Das Erstellen des ersten neuen Projektes kann einige Zeit in Anspruch nehmen, da die erforderlichen Datenbanken/Libraries für das Board und das Framework heruntergeladen werden.

Sobald das Projekt erstellt wurde, befinden sich Links im Ordnermenü mehrere Dateien.

<img width="247" alt="platformio_10" src="https://user-images.githubusercontent.com/100713757/193404140-5b3809fe-8231-4acb-9e94-62452e946692.png">

In der Datei "platformio.ini" befinden sich Einstellungen, unteranderem kann da eine manuelle Portzuweisung festgelegt werden. Im Ordner src befindet sich die "main.cpp". Diese Datei beinhaltet die void setup(), was das Board einmal beim Start abläuft, als auch die void loop() Funktion, die in Dauerschleife abgespielt wird.

<details>
<summary>Beispielcode - Blinklicht in main.cpp</summary>

```cpp
#include <Arduino.h> // Library der Arduino

const int LED_BUILTIN = 2; // Zuteilung einer (Pin-)Nummer

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT); // Zuweisung, dass LED_BUILTIN bzw. digitalPin 2 ein Output ist
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(LED_BUILTIN, HIGH); // Dem Output LED_BUILTIN den Wert HIGH schreiben -> LED leuchtet
  delay(1000); // Zeitverzögerung in Millisekunden
  digitalWrite(LED_BUILTIN, LOW); // Dem Output LED_BUILTIN den Wert LOW schreiben -> LED leuchtet nicht
  delay(1000);
}
```

</details>
  
Ist das Programm fertig geschrieben, kann unten an der Leiste mittels dem Pfeil nach rechts das Programm in das Board hochgeladen werden.
  
<img width="579" alt="platformio_11" src="https://user-images.githubusercontent.com/100713757/193404786-882da482-661c-4135-875b-fefb3b53e2a6.png">
  
Der erfolgreiche Upload wird mit einem "success" im Terminal signalisiert:
  
<img width="690" alt="platformio_12" src="https://user-images.githubusercontent.com/100713757/193404948-e492aacd-ca7d-409d-9d45-944da605aeab.png">

## Arduino Cloud
  
Für die [Arduino Cloud](https://create.arduino.cc/iot/) muss zunächst ein Konto erstellt werden. Unter Things sind die gewünschten Variablen zu erstellen. In der kostenfreien Version können 5 Variablen angelegt werden. In diesem Beispiel nutzen wir folgende Variablen:
  
<details>
<summary>Einstellung der Variable "led_status"</summary>
  
<img width="649" alt="arduinocloud_1" src="https://user-images.githubusercontent.com/100713757/193405489-05a7d664-8b81-438e-97d9-f3cc58374c2f.png">

</details>
  
<details>
<summary>Einstellung der Variable "led_onoff"</summary>
  
<img width="649" alt="arduinocloud_2" src="https://user-images.githubusercontent.com/100713757/193405525-3c4ecea2-1432-41d4-8bbc-c799fe7c488e.png">
  
</details>
  
<details>
<summary>Einstellung der Variable "workingtime"</summary>
  
<img width="649" alt="arduinocloud_3" src="https://user-images.githubusercontent.com/100713757/193405559-aedd6553-79d2-44d9-9043-02c073a5e66c.png">

</details>

Es kann ein Dashboard erstellt werden, wo verschiedene Widgets zur Verfügung stehen, die mit Variablen verlinkbar sind. In diesem Beispiel werden die Widgets Status, Switch und Value genutzt. 

<img width="719" alt="arduinocloud_4" src="https://user-images.githubusercontent.com/100713757/193405191-7bbbba2f-1977-42e5-9379-39da96c87f62.png">
  
<details>
<summary>Einstellung des Widgets "Status"</summary>
  
<img width="915" alt="arduinocloud_5" src="https://user-images.githubusercontent.com/100713757/193405713-bf2f7a1a-7668-4087-9ecf-0ca80e119f07.png">
  
</details>

<details>
<summary>Einstellung des Widgets "Switch"</summary>

<img width="1008" alt="arduinocloud_6" src="https://user-images.githubusercontent.com/100713757/193405751-6c742940-99af-47b7-8197-2994c550b637.png">
  
</details>
  
<details>
<summary>Einstellung des Widgets "Value"</summary>
  
<img width="1008" alt="arduinocloud_7" src="https://user-images.githubusercontent.com/100713757/193405660-46537539-7b4d-4dfc-a6d4-2adf731e01aa.png">

</details>
  
In den Einstellungen der Widgets sieht man bereits die Verlinkung mit den Variablen, dies funktioniert so:
  
<details>
<summary>Widgets mit Variablen verlinken</summary>
  
<img width="336" alt="arduinocloud_8" src="https://user-images.githubusercontent.com/100713757/193405920-b1189b03-92d9-4ee6-bcf6-d21f8215acbc.png">
  
<img width="863" alt="arduinocloud_9" src="https://user-images.githubusercontent.com/100713757/193406008-aae79bb3-1ecb-4765-9301-f940f2f7a47d.png">

<img width="863" alt="arduinocloud_10" src="https://user-images.githubusercontent.com/100713757/193406011-efc0f367-c1df-488a-9d5c-9cc6f1dc82d0.png">

<img width="344" alt="arduinocloud_11" src="https://user-images.githubusercontent.com/100713757/193406013-727e6e7b-3021-46ce-b0d4-fe404f5c9c9a.png">
  
</details>

Zurück in Things müssen noch das Gerät und das Netzwerk eingestellt werden.
  
<img width="979" alt="arduinocloud_12" src="https://user-images.githubusercontent.com/100713757/193406122-bf83257c-235c-4391-be8d-cdcffb70b314.png">

<details>
<summary>1. Gerät auswählen</summary>
  
WICHTIG! Secret Key unbedingt Downloaden/abspeichern!
  
<img width="339" alt="arduinocloud_13" src="https://user-images.githubusercontent.com/100713757/193406487-c83a3a51-224d-4279-998e-7c39728cfa4a.png">

<img width="649" alt="arduinocloud_14" src="https://user-images.githubusercontent.com/100713757/193406492-a2eb7465-0011-4dfa-ab8a-7721921ba57c.png">
  
<img width="649" alt="arduinocloud_15" src="https://user-images.githubusercontent.com/100713757/193406495-36dd2dac-d11d-4e9e-b849-e27cfebfc7d3.png">
  
<img width="649" alt="arduinocloud_16" src="https://user-images.githubusercontent.com/100713757/193406500-54892851-421f-4b38-8bc5-8df12d9df021.png">

<img width="649" alt="arduinocloud_17" src="https://user-images.githubusercontent.com/100713757/193406510-ee91bd32-310f-4b2d-b246-2213fde7af3f.png">

</details>
  
<details>
<summary>2. Netzwerk einstellen (Nach Geräteauswahl!)</summary>
  
Der vorhin gespeicherte Secret Key wird hier nun benötigt.
  
<img width="322" alt="arduinocloud_18" src="https://user-images.githubusercontent.com/100713757/193406563-7607af05-9a92-429d-a681-fb0ae849f539.png">
  
<img width="650" alt="arduinocloud_19" src="https://user-images.githubusercontent.com/100713757/193406639-48e10171-671f-4f99-a6af-07c74db529b2.png">

</details>

Um nun ein Programm zu schreiben und in das Board hochzuladen ist wie folgt vorzugehen:
  
<details>
<summary>Editor öffnen</summary>
  
<img width="975" alt="arduinocloud_20" src="https://user-images.githubusercontent.com/100713757/193407213-0ae6855c-5bd4-4d7f-90af-87a679400422.png">
  
<img width="975" alt="arduinocloud_21" src="https://user-images.githubusercontent.com/100713757/193407216-3ee0ec88-6d55-4d2a-9161-3d897ff04fa2.png">

</details>
  
<details>
<summary>Arduino Create Agent herunterladen und installieren</summary>
  
Der Arduino Create Agent ist einmalig zu installieren, jedoch muss es immer gestartet werden, bevor ein Upload stattfinden kann. Ggf. die Seite mit dem Editor neu laden nach dem Start vom Agent.
  
<img width="975" alt="arduinocloud_22" src="https://user-images.githubusercontent.com/100713757/193407221-461fe275-7fc8-408c-b653-636132506866.png">

<img width="569" alt="arduinocloud_23" src="https://user-images.githubusercontent.com/100713757/193407227-3ecb03d7-fb7a-4776-9931-d59812ed7cac.png">

</details>
  
<details>
<summary>Beispielcode - SOS Blinklicht</summary>
  
```cpp
/*
  Sketch generated by the Arduino IoT Cloud Thing "Untitled"
  https://create.arduino.cc/cloud/things/f02d4d18-57a8-4bbc-9e8b-6ee596c3cb32

  Arduino IoT Cloud Variables description

  The following variables are automatically generated and updated when changes are made to the Thing

  int workingtime;
  bool led_onoff;
  bool led_status;

  Variables which are marked as READ/WRITE in the Cloud Thing will also have functions
  which are called when their values are changed from the Dashboard.
  These functions are generated with the Thing and added at the end of this sketch.
*/

#include "thingProperties.h"

bool sos; // Zwischenvariable
int LED_BUILTIN = 2; // Pinzuteilung

void setup() {
  // Initialize serial and wait for port to open:
  Serial.begin(9600);
  // This delay gives the chance to wait for a Serial Monitor without blocking if none is found
  delay(1500);
  
  pinMode(LED_BUILTIN, OUTPUT); // Zuweisen von LED_BUILTIN als einen Output

  // Defined in thingProperties.h
  initProperties();

  // Connect to Arduino IoT Cloud
  ArduinoCloud.begin(ArduinoIoTPreferredConnection);

  /*
     The following function allows you to obtain more information
     related to the state of network and IoT Cloud connection and errors
     the higher number the more granular information you’ll get.
     The default is 0 (only errors).
     Maximum is 4
  */
  setDebugMessageLevel(2);
  ArduinoCloud.printDebugInfo();
}

void loop() {
  ArduinoCloud.update();
  // Your code here
  if(sos){ // Wenn sos true, dann
  digitalWrite(LED_BUILTIN, HIGH); // Dem Output LED_BUILTIN den Wert HIGH schreiben -> LED leuchtet
  delay(250); // Zeitverzögerung in Millisekunden
  digitalWrite(LED_BUILTIN, LOW); // Dem Output LED_BUILTIN den Wert LOW schreiben -> LED leuchtet nicht
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(250);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(250);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(250);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(250);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(250);
  digitalWrite(LED_BUILTIN, LOW);
  delay(3000);
  workingtime++; // Zählvariable +1
  } 
}


/*
  Since LedOnoff is READ_WRITE variable, onLedOnoffChange() is
  executed every time a new value is received from IoT Cloud.
*/
void onLedOnoffChange()  { // Was soll passieren, wenn der Switch im Dashboard umgeschaltet wird
  // Add your code here to act upon LedOnoff change
  if(led_onoff){ // Wenn on, dann
    led_status = true;
    sos = true;
    workingtime = 0;
  } else {
    led_status = false;
    sos = false;
    workingtime = 0;
  }
}
```

</details>
  
<details>
<summary>Upload</summary>
  
<img width="973" alt="arduinocloud_24" src="https://user-images.githubusercontent.com/100713757/193407634-5f0878ab-5878-47ff-a234-c58b7a7acb34.png">

<img width="973" alt="arduinocloud_25" src="https://user-images.githubusercontent.com/100713757/193407637-65707a06-c17c-4c3e-94bd-be34139634b6.png">

</details>
