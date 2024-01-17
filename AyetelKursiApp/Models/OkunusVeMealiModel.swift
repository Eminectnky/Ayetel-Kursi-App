//
//  OkunusVeMealiModel.swift
//  AyetelKursi
//
//  Created by Emine CETINKAYA on 16.09.2023.
//

import Foundation

struct OkunusJsonData: Codable {
    let baslik: String
    let icerik: String
    
}

struct OkunusJson: Codable {
    
    let okunus: OkunusJsonData
    let meal: OkunusJsonData
}




func loadAyetelKursiOkunus() -> OkunusJson? {


        guard let url = Bundle.main.url(forResource: "okunus", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(OkunusJson.self, from: data) else {
            return nil
        }
        return jsonDataModel

    }

  
    
    func loadAyetelKursiMeal() -> OkunusJson? {
        guard let url = Bundle.main.url(forResource: "okunus", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(OkunusJson.self, from: data) else {
            return nil
        }
        return jsonDataModel
        
    }

