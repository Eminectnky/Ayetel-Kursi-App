//
//  FaziletleriModel.swift
//  AyetelKursiApp
//
//  Created by Emine CETINKAYA on 19.09.2023.
//

import Foundation

struct FaziletleriJsonData : Codable {
    
    let baslik: String
    let icerik: [String]
}


struct FaziletleriJson : Codable {
    
    let faziletleri : FaziletleriJsonData
    
}



func loadAyetelKursiFaziletleri() -> FaziletleriJson? {


        guard let url = Bundle.main.url(forResource: "faziletleri", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(FaziletleriJson.self, from: data) else {
            return nil
        }
    
        return jsonDataModel

    }


