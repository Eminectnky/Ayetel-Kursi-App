//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//

import SwiftUI


struct SideMenuView: View {
    
    @Binding var selectedSideMenuTab: Int?
    @Binding var presentSideMenu: Bool
    
    @State private var MealView = false
    
    var body: some View {
        
        HStack{
           
            
            ZStack{
                Rectangle()
                    .fill(.white)
                    .frame(width: 270)
                    .shadow(color: .purple.opacity(0.1), radius: 5, x:0, y:3)
                
                VStack(alignment: .leading, spacing:0) {
                    ProfileImageView()
                        .frame(height: 140)

                    
                    ForEach(SideMenuRowType.allCases, id: \.self){ row in
                        RowView(isSelected: selectedSideMenuTab ==
                                row.rawValue, imageName: row.iconName, title: row.title){
                            selectedSideMenuTab = row.rawValue
                            
                            presentSideMenu.toggle()
                            
                        }
                        
                    }
                    
                    Spacer()
                    
                }
                
                .padding(.top, 50)
                .frame(width: 270)
                .background(
                    Color.white
                )
            }
            
            Spacer()
        }
        .background(.clear)
    }
    
    func ProfileImageView() -> some View {
        VStack(){
            
            HStack{
                
                Spacer()
                
                ZStack{
                    
                    Color("menuColor")
                        .ignoresSafeArea()
                        .padding(-9)
                        Image("menust1")
                }
           Spacer()
            }
      
        }
        
        .padding(.bottom, 10) // Boşluğu kaldırır
    }
    
    func RowView(isSelected: Bool, imageName: String, title: String, hideDivider: Bool = false, action: @escaping (()->())) -> some View {
        
        
        Button{
            action()
            
        } label: {
            VStack(alignment: .leading){
                HStack(spacing: 5){
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: 5)
                 
                    HStack{
                        
                        ZStack{
                            Image(imageName)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .clipShape(Circle()) // Görüntüyü yuvarlak kesimle sınırlar
                                .shadow(radius: 5)
    
                        }
                        
                        .frame(width: 30, height: 30)
                        Text(title)
                        //  .font(system(size: 14, weight: .regular))
                            .font(Font.system(size: 17, weight: .bold))
                        
                        
                            .foregroundColor(Color("arapcaColor"))
                    }
      
                }
                .padding(.bottom, -4) // Seçenekleri aşağı kaydırır
                
                
                    Rectangle()
                        .foregroundColor(Color("divider"))
                        .frame(height: 1)
                        .padding(.horizontal, 5)

            }
        }
        
        .frame(height: 50)
        
        
    }
}
