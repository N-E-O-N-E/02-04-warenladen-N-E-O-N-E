//
//  funktionen.swift
//  02-04 Warenladen
//
//  Created by Markus Wirtz on 17.07.24.
//

import Foundation

// 1.1 Begrüßung ------------------------------------------------------------------------

func begruessung() {
    
    print("Hallo und Willkommen im Warenladen. Bitte gib deinen Namen ein: ")
    var name: String = readLine()!
    
    if name.isEmpty {
        name = "Anonym"
        print("Vielen Dank \(name)")
    } else {
        print("Vielen Dank \(name)")
    }
}

// 1.2 Ganzzahl eingeben ---------------------------------------------------------------
func ganzzahl() {
    
    print("Bitte geb eine ganzzahk ein: ")
    let ganzzahl: Int? = Int(readLine()!) ?? 0
    
    print("Vielen Dank für die Zahl \(ganzzahl!)")
    
}
   
// 1.4. Ja/Nein ----------------------------------------------------------------------------

func jaOderNein() {
    
    var auswahl: Bool = false

    while auswahl == false {
        
        print("Bitte triff eine Auswahl (j/n): ")
        let eingabe: String? = readLine()!.lowercased()
            
        if eingabe == "j" {
            print("Vielen Dank für dein JA!")
            // Code
            auswahl = true
        } else if eingabe == "n" {
            print("Vielen Dank für dein NEIN!")
            // Anderen Code
            auswahl = true
        } else {
            print("Fehlerhafte eingabe. Bitte erneut versuchen!")
            auswahl = false
        }
    }
}

// 1.4.b Ja/Nein ----------------------------------------------------------------------------

func jaOderNeinNeu() {
    
    var booloean: Bool? = nil
    
    while true {
        
        print("Bitte triff eine Auswahl (ja/nein): ")
        let eingabe: String? = readLine()!.lowercased()
            
        if eingabe == "ja" {
            booloean = true
            print("Deine Eingabe war: \(eingabe!), Bool ist: \(booloean!)")
            
            break
        } else if eingabe == "nein" {
            booloean = true
            print("Deine Eingabe war: \(eingabe!), Bool ist: \(booloean!)")
            break
        } else {
            booloean = false
            print("Fehlerhafte eingabe. Bitte erneut versuchen! Bool ist: \(booloean!)")
        }
    }
}

// 2.2 Produkmarken hinzufügen -------------------------------------------------------------------

func addMarkenname() {
    print("Bitte gebe hier deine neuen Marke ein: ")
    produktmarkenListe.append(readLine()!)
    print("Deine Marke wurde hinzugefügt")
    print(produktmarkenListe)
}

// 2.3 Produktmarken entfernen -------------------------------------------------------------------

func delMarkenname() {
    
    print(produktmarkenListe)
    print("Gib hier die Index-Nr deiner Marke ein, um diese aus der Liste zu löschen: ")
    let selectedNo: Int = Int(readLine()!)! - 1
    
    if selectedNo >= 0 && selectedNo < produktmarkenListe.count {
        
        produktmarkenListe.remove(at: selectedNo)
        
        print("Deine Marke wurde gelöscht!")
        print(produktmarkenListe)
        
    } else {
        print("Fehlerhafte Eingabe - es konnte kein Element gelöscht werden!")
    }
}

// Aufgabe 3.2 Value über Key im Dict finden -----------------------------------------------------------------------------------

func qryProduktname() {
    
    print("Eingabe Produktname: ")
    let usereinagbe = readLine()!
    
    if produktBeschreibungen.keys.contains(usereinagbe)
    // Nachfragen wieseo hier auf den Key und später auf den Value zugegriffen wird bei exakter Schreibweise!
    //if produktBeschreibungen[(usereinagbe)] != nil
    {
        print("Beschreibung: \(produktBeschreibungen[(usereinagbe)]!)")
        
    } else {
        print("Produktname nicht in Dictionary gefunden!")
    }
    
}


// Aufgabe 3.3 Produktbeschreibung hinzufügen

func addDictionary() {
    
    // Abfrage des Namens als String
    print("Bitte gib einen Produktnamen ein: ")
    let addProduktname: String = String(readLine()!)
    
    // Abfrage der Beschreibung als String
    print("Bitte gib nun eine Beschreibung ein: ")
    let addProduktBeschreibung: String = String(readLine()!)
    
    // Übergabe der Eingaben als String in das Dict produktBeschreibungen
    
    produktBeschreibungen[addProduktname] = addProduktBeschreibung
    
    print(">>> \(addProduktname) wurde mit Beschreibung hinzugefügt! \n")
    print(produktBeschreibungen)
    
}


// Aufgabe 3.4 Einkaufwagen

func einkaufswagen() {
    
var einkauf: Bool = true
var warenkorb: [String:Int] = [:]
    
while einkauf == true {

        print("""
        
        Treffen Sie eine Auswahl:
        
            1) Neues Produkt aus Liste 1 bis 10 auswählen
            2) Warenkorb anzeigen
            3) Beenden
        
        """)
        
    
        let menue: Int = Int(readLine()!)!
        
        switch menue {
        
        case 1:
            
            print("Geben Sie die Artikelnummer ein: ")
            let artNr: Int = Int(readLine()!)! - 1
            
            print("Geben Sie die Menge ein: ")
            let menge: Int = Int(readLine()!)!
            
            let artikelName = neueProduktliste[artNr].produktName
            
            // let warenkorb: [String:Int] = [artikelName:menge]
            warenkorb[artikelName] = menge
            
            print("Der Warenkorb enthält aktuell: \(warenkorb)")
            
        case 2:
            print("Der Warenkorb enthält aktuell: \(warenkorb)")
            
        case 3:
            print("Programm beendet")
            einkauf = false
        
        default:
            print("Programm unerwartet beendet!")
            break
        
            // code
       
        }
    }
}
