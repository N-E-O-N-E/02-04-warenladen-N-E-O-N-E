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

// 2.1 Produktmarken ---------------------------------------------------------------------------
var produktmarkenListe: [String] = ["Gerolsteiner", "Milka", "Ritter Sport", "Dr. Oetker", "Müller", "Tchibo", "Hengstenberg", "Bahlsen", "Maggi", "Kühne", "Knorr", "Schwartau", "Storck", "Maoam", "Teekanne", "Meica", "Hipp", "Werther's Original", "Bitburger", "Erdinger"]

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

// 2.4. Produkt definieren -----------------------------------------------------------------------
    
    var neueProduktliste: [Produkt] = []

    neueProduktliste.append(Produkt(produktName: "Wasser", produktPreis: 0.85, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Marzipan-Schokolade", produktPreis: 1.45, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Oliven", produktPreis: 2.30, verzehrbar: true, herkunft: "Türkei"))
    neueProduktliste.append(Produkt(produktName: "Salami", produktPreis: 2.10, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Mehl", produktPreis: 1.20, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Butterkekse", produktPreis: 2.15, verzehrbar: true, herkunft: "Frankreich"))
    neueProduktliste.append(Produkt(produktName: "Gurke", produktPreis: 0.90, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Honigmelone", produktPreis: 2.40, verzehrbar: true, herkunft: "Spanien"))
    neueProduktliste.append(Produkt(produktName: "Rinderhack", produktPreis: 3.95, verzehrbar: true, herkunft: "Deutschland"))
    neueProduktliste.append(Produkt(produktName: "Kartoffeln", produktPreis: 4.10, verzehrbar: true, herkunft: "Deutschland"))

    print(neueProduktliste)
    print("\n")



// 2.6. Closures und MAP, Filter, Rediuce
 /*
  
  Das $0 bzw. das $1, $2 etc, bezieht sich immer auf die Parameter in einem Closure
  wobei $0 den ersten Parameter meint!
  
  Map wird verwendet um eine Closure auf jedes Element einer Liste anzuwenden
  
  Filter wird verwendet um in einer Sammlung nach einem Element zu filtern
  
  Reduce wird verwendet um alle elemente einer sammlung zusammenzufassen - >>> hab ich aber noch nicht verstanden!
  
  Closures erlauben eine smarte datenmanipulation
  
  */


// begruessung()
// ganzzahl()
// jaOderNein()
// jaOderNeinNeu()

// addMarkenname()
// delMarkenname()
neuesProdukt()
print(neueProduktliste)


