//
//  produkt.swift
//  02-04 Warenladen
//
//  Created by Markus Wirtz on 16.07.24.
//

import Foundation

// 2.4. Produkt definieren -----------------------------------------------------------------------

struct Produkt {
    
    var produktName: String
    var produktPreis: Double
    var verzehrbar: Bool = true
    var herkunft: String
    
}

// 2.5. Produkt hinzufügen ------------------------------------------------------------------------

func neuesProdukt() {
    
    print("Produktname: ")
    let neu_produktName: String = readLine() ?? "n/a"
    
    print("Produktpreis: ")
    let neu_produktPreis: Double = Double(readLine() ?? "0.00") ?? 0.00
    
    var neu_verzehrbar: Bool = false
    print("Verzehrbar (y/n): ")
    let eingabe_Verzehrbar_String: String = readLine()?.lowercased() ?? "n/a"
    
        if eingabe_Verzehrbar_String == "y" {
            neu_verzehrbar = true
        } else {
            neu_verzehrbar = false
        }
    
    print("Herkunft: ")
    let neu_herkunft: String = readLine() ?? "n/a"
    
    neueProduktliste.append(Produkt(produktName: neu_produktName, produktPreis: neu_produktPreis, verzehrbar: neu_verzehrbar, herkunft: neu_herkunft))
    
}
