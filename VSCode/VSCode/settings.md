 
Je nach Betriebssystem und Terminal bieten sich verschiedenen Standard-Encodings an.

Für Mac:
    
    "files.encoding": "utf8bom",            

Für Windows
    
    "files.encoding": "cp437",   

Wenn man seinen Code vor dem Ausführen nicht speichert kann das zu ziemlicher Verwirrung führen. Es ist daher empfehlenswert ihn einfach regelmäßig automatisch speichern zu lassen:

    "files.autoSave": "afterDelay",         
    
Das Intervall legt man mit 

    "files.autoSaveDelay": 1000,            
    
fest. Die Einheit ist Milisekunden. Default: 1000

    "code-runner.runInTerminal": true,   

ist notwendig, damit man z. B. bei scanf auch Eingaben an sein Programm tätigen kann.

Mit 

    //"code-runner.saveFileBeforeRun": true,
    
kann man seine Dateien vor dem Ausführen mit CodeRunner speichern lassen. Wenn man jedoch nicht CodeRunner einsetzt, sondern z.B. den Debugger, müsste man wieder von Hand speichern, was einem dann wahrscheinlich nicht in Fleisch und Blut übergegangen ist.

Für eine bessere Übersicht welche Klammer zu welchem Klammerpaar gehört kann man diese unterschiedlich einfärben lassen:

  editor.bracketPairColorization.enabled": true,

Das folgende braucht man, damit Code Runner funktioniert.

    "code-runner.executorMap": {


        "c": "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
        
    },

Wer ein etwas aufgeräumteres Terminal bevorzugt nimmt die folgende Variante, die vor jedem Abarbeiten einen "clear"-Befehl ausführt, was den Bildschirm nach unten scrollt, sodass man nur den aktuellen Output sieht:

    "code-runner.executorMap": {

        "c": "clear && cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"
        
    },


Mit folgendem Block werden alle Schlüsselwörter fett dargestellt:

     "editor.tokenColorCustomizations": {
        "textMateRules": [
            {
                "scope": "keyword",
                "settings": {
                    "fontStyle": "bold"
                }
            },
        ]
    },


    "editor.renderWhitespace": "all",
    
