//
//  JsonDataModel.swift
//  AyetelKursi
//
//  Created by Emine CETINKAYA on 6.09.2023.
//

import Foundation
import SwiftUI


struct AyetelKursiTrLocalization: Codable{
    let baslik: String
    let icerik: [String]
    
    
    static func loadAyetelKursiTurkce() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "ayetel_dua_turkce", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data) else {
            return nil
        }
        return jsonDataModel
        
    }
    
    
    static func loadAyetelKursiMeal() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "ayetel_dua_meal", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data) else {
            return nil
        }
        return jsonDataModel
    }
    
    
    static func loadAyetelKursiArapca() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "ayetel_dua_arapca", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data) else {
            return nil
        }
        
        return jsonDataModel
        
        
        
    }
    
    static func loadAyetelKursiHadis() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "hadis", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data)
        else {
            return nil
        }
        
        return jsonDataModel
    }
    
    static func loadAyetelKursiOkunus() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "okunus_ve_meali", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data) else {
            return nil
        }
        
        return jsonDataModel
        
        
        
    }
    
    
    struct Hadis: Codable {
        let baslik: String
        let icerik: [String]
    }
    
    func loadAyetelKursiHadis() -> AyetelKursiTrLocalization? {
        guard let url = Bundle.main.url(forResource: "hadis", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let jsonDataModel = try? JSONDecoder().decode(AyetelKursiTrLocalization.self, from: data)
        else{
            return nil
        }
        
        return jsonDataModel
    }
    
    
    
    
    
    
    
    
}
