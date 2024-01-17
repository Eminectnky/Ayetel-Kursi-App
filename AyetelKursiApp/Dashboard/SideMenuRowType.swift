//
//  SideMenuRowType.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//

import SwiftUI

enum SideMenuRowType: Int, CaseIterable{
    case meal = 1
    case fazilet = 2
    case hadis = 3
    case sirlar = 4

  


var title:String{
    
    switch self {
    case.meal:
        return "Okunuş ve Meali"
        
    case.fazilet:
        return "Faziletleri"
        
    case.hadis:
        return "İlgili Hadis"
        
    case.sirlar:
        return "Sırları ve Faydaları"
 
 
    }
}

var iconName: String{
    switch self {    
    case.meal:
        return "meal"
        
    case.fazilet:
        return "faziletleri"
        
    case.hadis:
        return "ico"
        
    case.sirlar:
        return "Sirlar"
    
    }
      }
        
    }


