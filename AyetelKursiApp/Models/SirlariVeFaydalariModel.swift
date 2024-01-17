//
//  SirlariVeFaydalariModel.swift
//  AyetelKursiApp
//
//  Created by Emine CETINKAYA on 21.09.2023.
//

import Foundation

struct SirlariJsonData : Codable {
    
    let baslik: String
    let icerik: [String]
}


struct SirlariJson : Codable {
    
    let sirlari : SirlariJsonData
    
}


func loadAyetelKursiSirlariVeFaydalari() -> SirlariJson? {


        guard let url = Bundle.main.url(forResource: "sirlari_ve_faydalari", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(SirlariJson.self, from: data) else {
            return nil
        }
    
        return jsonDataModel

    }

