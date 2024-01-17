//
//  FaydalariView.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//


import SwiftUI

struct FaydalariView: View {
    
    @State private var sirlariDataModel: SirlariJson?
    @State private var sirlari: [String] = []
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                VStack{
                    Text("Sırları ve Faydaları")
                        .foregroundColor(.white)
                        .frame(width:400, height: 50)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
//                        .padding(.bottom)
                        .padding(.trailing, 140)
                    
                    
                }.background(Color("menuColor"))
                
                
                ZStack{
                    
                    ScrollView{
                        
                        if let sirlariData = sirlariDataModel {
                            
                            
                            
                            Text(sirlariData.sirlari.baslik)
                                .foregroundColor(Color("arapcaColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                            VStack{
                                
                                
                                Text(sirlariData.sirlari.icerik.joined(separator: "\n\n"))
                                
                                
                                
                                    .foregroundColor(Color("arapcaColor")).opacity(1)
                                    .fontWeight(.medium)
                                    .font(.system(size: 17))
                                // Satır boşluğu bırakma
                                    .font(.title)
                                    .multilineTextAlignment(.leading)
                                
                                    .padding(12)
                                
                                    .frame(width: 360)
                                    .background(Color.white)
                                    .cornerRadius(3)
                                    .padding(.vertical, 5)
                                
                                    .shadow(radius: 5)
                                
                            }
                        }
                        
                    }
                    .padding(.bottom, 20) // İsteğe bağlı olarak ScrollView ın alt boşluğunu ayarlar
                }
            }
        }
        
    

        .onAppear{
            self.sirlariDataModel = loadAyetelKursiSirlariVeFaydalari()
        }
    }
}
struct FaydalariView_Previews: PreviewProvider {
    static var previews: some View {
        FaydalariView()
    }
}

