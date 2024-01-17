//
//  HadisView.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//


import SwiftUI

struct HadisView: View {

    
    @State private var ilgilihadislerDataModel: IlgiliHadisJson?
    
    @State private var ilgilihadisler: [String] = []
    @Environment(\.presentationMode) var presentationMode
    

    var body: some View {
     
        NavigationView{
            
            VStack{
                
                VStack{
                    HStack {
                        
                        VStack{
                            Text("İlgili Hadisler")
                                .foregroundColor(.white)
                                .frame(width:400, height: 50)
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
//                                .padding(.bottom)
                                .padding(.trailing, 205)
                        }
                        
                    }.background(Color("menuColor"))
                }
                
                ZStack{
                    
                    ScrollView{
                        
                        if let ilgilihadislerData = ilgilihadislerDataModel {
                            
                            Text(ilgilihadislerData.baslik)
                                .foregroundColor(Color("arapcaColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            VStack{

                                
                                Text(ilgilihadislerData.icerik.joined(separator: "\n\n"))
                                
                                
                                
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
                self.ilgilihadislerDataModel = loadAyetelKursiIlgiliHadis()
                
                
              
            }
        }
        
    }


struct HadisView_Previews: PreviewProvider {
    static var previews: some View {
        HadisView()
    }
}

