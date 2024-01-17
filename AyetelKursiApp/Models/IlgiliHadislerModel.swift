//
//  IlgiliHadislerModel.swift
//  AyetelKursiApp
//
//  Created by Emine CETINKAYA on 20.09.2023.
//

import Foundation

struct IlgiliHadisJson: Codable {
    let baslik: String
    let icerik: [String]
}

func loadAyetelKursiIlgiliHadis() -> IlgiliHadisJson? {
    guard let url = Bundle.main.url(forResource: "ilgili_hadisler", withExtension: "json"),
          let data = try? Data(contentsOf: url),
          let jsonDataModel = try? JSONDecoder().decode(IlgiliHadisJson.self, from: data)
    else{
        return nil
    }
    
    return jsonDataModel
}

