import SwiftUI

struct MealView: View {
    
    @State private var okunusDataModel: OkunusJson?
    @State private var mealDataModel: OkunusJson?
    
    var body: some View {
        
        
        
        NavigationView {
            
            VStack{
                
                
                
                VStack{
               
                    
                    HStack {
                        
                        


                        Text("Okunuş ve Meali")
                            .foregroundColor(.white)
                            .frame(width:400, height: 50)
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
//                            .padding(.bottom)
                            .padding(.trailing, 160)


                    }.background(Color("menuColor"))
                    
                    
                    
                }
                
                
                ZStack{
                    ScrollView{
                        
                        if let okunusData = okunusDataModel,
                           let mealData = mealDataModel {
                            
                            Text(okunusData.okunus.baslik)
                                .foregroundColor(Color("arapcaColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                            
                            Text(okunusData.okunus.icerik)
                                .foregroundColor(Color("arapcaColor")).opacity(1)
                                .font(.system(size: 17))
                            // Satır boşluğu bırakma
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(12)
                                .frame(maxWidth: 360,maxHeight: 309)
                                .background(Color.white)
                                .cornerRadius(3)
                                .shadow(radius: 5)
                                .padding(.horizontal)
                                .padding(.vertical, 1)
                                .lineLimit(30)
                                .fixedSize(horizontal: false, vertical: true) // Metni boyutlandır
                            
                            
                            Text(mealData.meal.baslik)
                                .foregroundColor(Color("arapcaColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                            Text(mealData.meal.icerik)
                                .foregroundColor(Color("arapcaColor")).opacity(1)
                                .fontWeight(.medium)
                                .font(.system(size: 17))
                            // Satır boşluğu bırakma
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(12)
                                .frame(maxWidth: 360,maxHeight: 410)
                                .background(Color.white)
                                .cornerRadius(3)
                                .shadow(radius: 5)
                                .padding(.horizontal)
                                .padding(.vertical, 1)
                                .lineLimit(30)
                                .fixedSize(horizontal: false, vertical: true) // Metni boyutlandırır
                        }
                    }
                }
                
              
                
            }
         
            
            
            .navigationBarHidden(true) // Gezinme çubuğunu gizler
            .onAppear {
                self.okunusDataModel = loadAyetelKursiOkunus()
                self.mealDataModel = loadAyetelKursiMeal()
                
            }
            
        }
    }
    
    
    
    
    
    
    struct MealView_Previews: PreviewProvider {
        static var previews: some View {
            MealView()
        }
    }
    
    
    
}
