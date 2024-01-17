//
//  HomeView.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//

import SwiftUI


    
struct ContentView: View {
    
    
    @State private var presentSideMenu = false
    
    var body: some View {
        ZStack {
            HomeView(presentSideMenu: $presentSideMenu)
            
            if presentSideMenu {
                SideMenu(isShowing: $presentSideMenu, content: AnyView(Text("Side Menu Content")))
            }
        }
    }
}
  

struct HomeView: View{
    
    @Binding var presentSideMenu: Bool
    
    var body: some View {
        
        VStack{
            HStack{
                if !presentSideMenu {
                    
                    
                    Button{
                        presentSideMenu.toggle()
              } label: {
                        Image("sidebar")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }
                
                Spacer()
            }
         
        }
        .padding(.horizontal, 24)
    }
}

