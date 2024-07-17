import Foundation

// 2.1 Produktmarken ---------------------------------------------------------------------------
var produktmarkenListe: [String] = ["Gerolsteiner", "Milka", "Ritter Sport", "Dr. Oetker", "Müller", 
                                    "Tchibo", "Hengstenberg", "Bahlsen", "Maggi", "Kühne", "Knorr",
                                    "Schwartau", "Storck", "Maoam", "Teekanne", "Meica", "Hipp",
                                    "Werther's Original", "Bitburger", "Erdinger"]

// 2.4. Produkt definieren -----------------------------------------------------------------------
    
var neueProduktliste: [Produkt] = []

neueProduktliste.append(Produkt(produktName: "Wasser", 
                                produktPreis: 0.85,
                                verzehrbar: true,
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Schokolade",
                                produktPreis: 1.45,
                                verzehrbar: true,
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Oliven", 
                                produktPreis: 2.30,
                                verzehrbar: true,
                                herkunft: "Türkei"))

neueProduktliste.append(Produkt(produktName: "Salami", 
                                produktPreis: 2.10, 
                                verzehrbar: true,
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Mehl",
                                produktPreis: 1.20, 
                                verzehrbar: true, 
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Haferkekse",
                                produktPreis: 2.15,
                                verzehrbar: true,
                                herkunft: "Frankreich"))

neueProduktliste.append(Produkt(produktName: "Gurke",
                                produktPreis: 0.90, 
                                verzehrbar: true,
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Honigmelone",
                                produktPreis: 2.40, 
                                verzehrbar: true,
                                herkunft: "Spanien"))

neueProduktliste.append(Produkt(produktName: "Rinderhack",
                                produktPreis: 3.95, 
                                verzehrbar: true,
                                herkunft: "Deutschland"))

neueProduktliste.append(Produkt(produktName: "Kartoffeln",
                                produktPreis: 4.10,
                                verzehrbar: true,
                                herkunft: "Deutschland"))

    //print(neueProduktliste)
    
// 2.6. Closures und MAP, Filter, Rediuce
/*
  Das $0 bzw. das $1, $2 etc, bezieht sich immer auf die Parameter in einem Closure
  wobei $0 den ersten Parameter meint!
  
  Map wird verwendet um eine Closure auf jedes Element einer Liste anzuwenden
  
  Filter wird verwendet um in einer Sammlung nach einem Element zu filtern
  
  Reduce wird verwendet um alle elemente einer sammlung zusammenzufassen - >>> hab ich aber noch nicht verstanden!
  
  Closures erlauben eine smarte datenmanipulation
*/

// Aufgabe 3.1 ------------------------------------------------------------------------------------

// Leeres Dictionary erstellen
var produktBeschreibungen: [String:String] = [:]

produktBeschreibungen["Schokolade"] = "Zahrbitterschokolade mit 80 % Kakao"
produktBeschreibungen["Wasser"] = "Stilles Quellwasser auf der Region"
produktBeschreibungen["Haferkekse"] = "Haferkekse ohne Schokolade und wenig Zucker"
produktBeschreibungen["Salami"] = "GutBIO Rindersalami aus der Region"
produktBeschreibungen["Mehl"] = "Type 1050 – dunkle Farbe, herber Geschmack. Gut zum Brotbacken"
                      


// begruessung()
// ganzzahl()
// jaOderNein()
// jaOderNeinNeu()
// addMarkenname()
// delMarkenname()
// neuesProdukt()
//qryProduktname()
addDictionary()




