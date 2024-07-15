//
//  main.swift
//  02-04 Warenladen
//
//  Created by Fabian Moreno on 12.07.24.
//

import Foundation


func begruessung() {
    
    print("Hallo und Willkommen im Warenladen. Bitte gib deinen Namen ein: ")
    let name: String = readLine()!
    print("Vielen Dank \(name)")
}


func ganzzahl() {
    
    print("Bitte geb eine ganzzahk ein: ")
    let ganzzahl: Int? = Int(readLine()!) ?? 0
    print("Vielen Dank für die Zahl \(ganzzahl!)")
    
}
   

func jaOderNein() {
    
    var auswahl: Bool = false

    while auswahl == false {
        
        print("Bitte triff eine Auswahl (j/n): ")
        let eingabe: String? = readLine()!
            
        if eingabe?.lowercased() == "j" {
            print("Vielen Dank für dein JA!")
            auswahl = true
        } else if eingabe?.lowercased() == "n" {
            print("Vielen Dank für dein NEIN!")
            auswahl = true
        } else {
            print("Fehlerhafte eingabe. Bitte erneut versuchen!")

        }
    }
}




// begruessung()
// ganzzahl()
jaOderNein()

