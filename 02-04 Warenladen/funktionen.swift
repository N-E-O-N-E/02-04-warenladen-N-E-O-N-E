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
    
    print("Bitte geb eine Ganzzalk ein: ")
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


// Aufgabe 4.1. Produktmarken ausgeben --------------MINDEST--------------------------------
func produktMarkenOutput() {
   
    print("Liste aller Marken")
    print("--------------------------------------------------------")
    
    for (index,(marken)) in produktmarkenListe.sorted().enumerated() {
        print("\(index+1). Marke: \(marken)")
    }
    print("\n")
    
    
} // funktion ende

// Aufgabe 4.2 Die ersten 5 Produktmarken ausgeben ------------MINDEST------------------------

func produktMarkenOutput5() {
   
    print("Liste der ersten 5 Marken")
    print("--------------------------------------------------------")
    
    for (index,(marken)) in produktmarkenListe[Range(1...5)].sorted().enumerated() {
        print("\(index+1). Marke: \(marken)")
    }
    print("\n")
    
    
} // funktion ende

// Aufgabe 4.3 Produktliste formatiert ausgeben -----------------MINDEST----------------------

func produktlisteDictOutput() {
    
    print("Liste Produktliste (Dict) formatiert ausgeben")
    print("--------------------------------------------------------")
    
    for eintrag in neueProduktliste[Range(0...neueProduktliste.count-1)] {
        print("Name: \(eintrag.produktName), Preis: \(eintrag.produktPreis), Herkunft: \(eintrag.herkunft), Verzehrbar: \(eintrag.verzehrbar)")
    }
}

// Aufgabe 4.4 Range an Marken ausgeben ---------------------WEITERFÜHREND --------------------------

func userEingabeGanzzahl() {
    
    
while true {
    
        print("Bitte gib den Startwert für deine Suche ein: ")
        let startWertSuche: Int = Int(readLine()!)!
        print("Bitte gib den Endwert für deine Suche ein: ")
        
        let endOfList = neueProduktliste.count
        let endWertSuche: Int = Int(readLine()!)!
        
        if endWertSuche < endOfList {
            for eintrag in neueProduktliste[Range(startWertSuche...endWertSuche)] {
                print("Name: \(eintrag.produktName), Preis: \(eintrag.produktPreis), Herkunft: \(eintrag.herkunft), Verzehrbar: \(eintrag.verzehrbar)")
            }
            print("Range: \(startWertSuche) - \(endWertSuche)")
            break
            
        } else {
            print("Error: Input > EndOfList \n")
        }

    } // end if while
} // end of func



// Aufgabe 4.5 Einkaufwagen mit Gesamtpreis ----------------- BONUS ------------------------------------------

func einkaufswagenMitGesamtpreis() {
    
var einkauf: Bool = true
var warenkorb: [String:Int] = [:]
var warenwert: [Int:Double] = [:]
var gesamtkostenWarenkorb: Double = 0
    
while einkauf == true {

        print("""
        ----------------------------------------------------------
        Treffen Sie eine Auswahl:
        
            1) Neues Produkt hinzufügen
            2) Warenkorb anzeigen
            3) Warenkorbwert anzeigen
            4) Einkauf beenden
        
        ----------------------------------------------------------
        
        """)
        
    
        let menue: Int = Int(readLine()!)!
        
        switch menue {
        
        case 1:
            
            print("Geben Sie die Artikelnummer ein: ")
            let artNr: Int = Int(readLine()!)! - 1
            
            print("Geben Sie die Menge ein: ")
            let menge: Int = Int(readLine()!)!
            
            if artNr < neueProduktliste.count {
                let artikelName = neueProduktliste[artNr].produktName
                let artikelPreis = neueProduktliste[artNr].produktPreis
                
                warenkorb.updateValue(menge, forKey: artikelName)
                //warenkorb[artikelName] = menge
                warenwert.updateValue(artikelPreis, forKey: menge)
                //warenwert[menge] = artikelPreis
                
                
            } else {
                print("Fehler: Artikelnummer unbekannt!")
            }
            
            
            print("Der Warenkorb enthält aktuell: \(warenkorb)")
            
        case 2:
            print("Der Warenkorb enthält aktuell: \(warenkorb)")
            
        case 3:
            print("-----------------------------------------------------")
            print(" >>> Übersicht des Warenkorbwertes")
            print("-----------------------------------------------------")
            
            // Als Kunde will ich den Gesammtpreis für alle Produkte in meinem Einkaufswagen angezeigt bekommen.
            //print(warenwert)
            
            for (menge, preis) in warenwert {
                gesamtkostenWarenkorb = Double(menge) * preis
            }
            
            print("Der Warenkorbwert beträgt insgesamt: \(String(format: "%.2f", gesamtkostenWarenkorb)) EUR \n")
            
        
        case 4:
            print("Programm beendet")
            einkauf = false
        
        default:
            print("Programm unerwartet beendet!")
            break
        
            // code
       
        }
    }
}


