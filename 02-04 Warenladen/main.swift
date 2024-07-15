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


// begruessung()
// ganzzahl()
// jaOderNein()
// jaOderNeinNeu()



