// Folie 4 – verkettetelisten.c
#include <stdio.h>
#include <stdlib.h>

typedef struct PERSON_S person_t;
struct PERSON_S {
    char *Name;
    char *Adresse;
    int PLZ;
    person_t *Nachbar; 			            // Hier kommt der Verweis auf den Nachbarn	
};

int main (){ 
    person_t *StartListe=NULL;		        // Startpunkt der Liste definieren
    person_t *Pers=NULL;			        // Zeiger auf Aktuelle Person definieren

    Pers=calloc(1,sizeof(person_t));        // Speicher für Person anfordern
    if (Pers) {						        // Wenn Speicher erhalten dann...
        StartListe=Pers;			        // Startpunkt auf erste Person legen
        Pers->Name=(char*)malloc(31);       // Speicher für Name anfordern
        fgets(Pers->Name,31,stdin);         // Strukturelement cName von Tastatur einlesen
        Pers->Nachbar=NULL;			        // Weiteres Kettenelement auf NULL setzten
    }
  
    Pers=calloc(1,sizeof(person_t));    	// Speicher für nächste Person anfordern
    if (Pers) {						        // Wenn Speicher erhalten, dann...
        StartListe->Nachbar=Pers;		    // Nachbar von Startelement mit akt: Person verkn.
        Pers->Nachbar=NULL;			        // Weiteres Kettenelement auf NULL setzten
    }
    
    return 0;
}
