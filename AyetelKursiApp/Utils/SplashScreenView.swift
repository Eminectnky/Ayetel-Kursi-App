//
//  SplashScreenView.swift
//  AyetelKursiApp
//
//  Created by Emine CETINKAYA on 16.08.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
//    başlangıçta false olarak ayarlandı
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            MainTabbedView()
        }else{
            
            VStack{
                Image("Image")
           
                    .resizable()
                       .scaledToFill()
                       .edgesIgnoringSafeArea(.all)  
                       .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                    self.isActive = true
//                    belirli bir süre sonra true olarak ayarlandı
                }
                    
                }
                
            }
    }
    
    struct SplashScreenView_Previews: PreviewProvider {
        static var previews: some View {
            SplashScreenView()
        }
    }
}
