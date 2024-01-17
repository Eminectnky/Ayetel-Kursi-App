//
//  AyetelKursiView.swift
//  AyetelKursi
//
//  Created by Emine CETINKAYA on 28.08.2023.
//

import SwiftUI

struct AyetelKursiView: View {
    
    @State private var turkceDataModel: AyetelKursiTrLocalization?
    @State private var mealDataModel: AyetelKursiTrLocalization?
    @State private var arapcaDataModel: AyetelKursiTrLocalization?
    @State private var hadisDataModel: AyetelKursiTrLocalization?
    
    @State private var hadisler: [String] = []
    @State private var currentHadisIndex: Int = 0
    
    @State private var dynamicTextSize: CGFloat = 14 // Başlangıç boyutu
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                VStack{
                    Text("Ayet-el Kürsi")
                        .foregroundColor(.white)
                        .frame(width:400, height: 50)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom)
                        .padding(.trailing, 100)
                    
                    
                }.background(Color("menuColor"))
                
                
                
                VStack{
                    
                    
                    
                    
                    
                    
                    
                    ZStack {
                        
                        
                        ScrollView{
                            
                            
                            
                            
                            if let turkceData = turkceDataModel,
                               let mealData = mealDataModel,
                               let arapcaData = arapcaDataModel {
                                
                                
                                Text("Hadis-i Şerif")
                                    .foregroundColor(Color("arapcaColor"))
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                
                                
                                
                                ZStack{
                                    
                                    VStack{
                                        Text(hadisler[currentHadisIndex])
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("arapcaColor"))
                                            .font(.system(size: 15)) // Metin boyutunu 24 olarak ayarlar
                                            .font(.system(size: dynamicTextSize)) // Değişken boyut
                                            .font(.body)
                                            .lineSpacing(5) // Satır sonu bırakma
                                            .multilineTextAlignment(.leading)
                                        
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                            .padding()
                                            .frame(width: 360, height: 200)
                                            .background(Color.white)
                                            .cornerRadius(3)
                                            .shadow(radius: 5)
                                            .padding(.horizontal)
                                            .padding(.vertical, 15)
                                            .lineLimit(nil)
                                            .fixedSize(horizontal: false, vertical: true) // Metni boyutlandır
                                        
                                        
                                    }
                                    
                                    
                                    // Sol üst köşe görüntü
                                    Image(uiImage: UIImage(named: "solust")!)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .offset(x: -152, y: -72)
                                    
                                    
                                    
                                    
                                    // Sağ üst köşe görüntü
                                    Image(uiImage: UIImage(named: "sagust")!)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .offset(x: 152, y: -72)
                                    
                                    
                                    
                                    
                                    // Sol alt köşe görüntü
                                    Image(uiImage: UIImage(named: "solalt")!)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .offset(x: -152, y: 72)
                                    
                                    
                                    
                                    // Sağ alt köşe görüntü
                                    Image(uiImage: UIImage(named: "sagalt")!)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .offset(x: 152, y: 72)
                                    
                                    
                                    
                                }
                                
                                Text("Ayet-el Kürsi Duası")
                                    .foregroundColor(Color("arapcaColor"))
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                ForEach(0..<min(turkceData.icerik.count, mealData.icerik.count, arapcaData.icerik.count), id: \.self){index in
                                    
                                    
                                    HStack(alignment: .top, spacing: 10){
                                        
                                        
                                        VStack(alignment:.leading, spacing: 5){
                                            
                                            
                                            
                                            
                                            HStack{
                                                
                                                
                                                Text("\(index + 1)")
                                                    .font(.system(size: 33))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color("arapcaColor")).opacity(0.7)
                                                
                                                    .offset(y: 15) // Y ekseni (aşağıya doğru) kaydırma miktarı
                                                
                                                
                                                
                                                Spacer().frame(width:  15);
                                                
                                                VStack{
                                                    
                                                    Text("\(arapcaData.icerik[index])")
                                                        .fontWeight(.bold)
                                                        .foregroundColor(Color("arapcaColor"))
                                                        .multilineTextAlignment(.trailing)
                                                    
                                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                                        .padding(2)
                                                    
                                                    Text("\(turkceData.icerik[index])")
                                                        .fontWeight(.heavy)
                                                        .font(.system(size: 15))
                                                        .foregroundColor(Color("turkceColor"))
                                                        .font(.title2)
                                                    
                                                        .multilineTextAlignment(.leading)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                                                    
                                                    
                                                    Text("\(mealData.icerik[index])")
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("mealColor"))
                                                    
                                                    
                                                        .font(.system(size: 16))
                                                        .multilineTextAlignment(.leading)
                                                        .frame(maxWidth: .infinity, alignment: .leading)
                                                    
                                                    
                                                }
                                            }
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(3)
                                    .shadow(radius: 5)
                                    .padding(.horizontal)
                                    .padding(.vertical, 7)
                                    
                                    
                                }
                                
                                
                                
                                
                                
                                
                            }else {
                                
                                
                                VStack{
                                    ProgressView()
                                    Text("Veriler yükleniyor...")
                                    
                                    
                                }
                            }
                            
                            
                            
                        }
                        
                    }
                    
                    
                    
                    .onAppear {
                        
                        self.turkceDataModel = AyetelKursiTrLocalization.loadAyetelKursiTurkce()
                        
                        self.mealDataModel = AyetelKursiTrLocalization.loadAyetelKursiMeal()
                        
                        self.arapcaDataModel = AyetelKursiTrLocalization.loadAyetelKursiArapca()
                        
                        self.hadisDataModel = AyetelKursiTrLocalization.loadAyetelKursiHadis()
                        
                        
                        if let hadisData = hadisDataModel {
                            hadisler = hadisData.icerik.shuffled()
                        }
                    }
                }
                
                
                
                .onChange(of: currentHadisIndex) { newValue in
                    // Her bir hadis gösterildikten sonra bir sonraki hadise geçmek için kullanılır.
                    if !hadisler.isEmpty {
                        if newValue < hadisler.count - 1 {
                            self.currentHadisIndex += 1
                        } else {
                            // Tüm hadisler gösterildiyse, ilk hadise geri dön.
                            self.currentHadisIndex = 0
                            
                            
                            
                        }
                    }
                    
                }
                
            }
        }
    }
    
    
    
    struct AyetelKursiView_Previews: PreviewProvider {
        static var previews: some View {
            AyetelKursiView()
        }
    }
    
    
    
    
    
}

