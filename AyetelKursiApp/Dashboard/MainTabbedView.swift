//
//  ContentView.swift
//  SideMenu
//
//  Created by Emine CETINKAYA on 22.08.2023.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab : Int? = 0
    
    
    var body: some View {
        NavigationView {
           
            ZStack {
                
                NavigationLink(
                    destination:   MealView() ,
                    tag: 1,
                    selection: $selectedSideMenuTab) {
                        EmptyView()
                    }
                
                NavigationLink(
                    destination:   FaziletleriView() ,
                    tag: 2,
                    selection: $selectedSideMenuTab) {
                        EmptyView()
                    }
                
                NavigationLink(
                    destination:   HadisView() ,
                    tag: 3,
                    selection: $selectedSideMenuTab) {
                        EmptyView()
                    }
                NavigationLink(
                    destination:   FaydalariView() ,
                    tag: 4,
                    selection: $selectedSideMenuTab) {
                        EmptyView()
                    }
                
                AyetelKursiView()
                    
                    
                    VStack {
                        
                        HStack {
                            Button(action: {
                                presentSideMenu.toggle()
                            }) {
                                
                                Image("sidebar") 
                                    .resizable()
                                    .scaledToFit() // Resmi oranlarını koruyarak ölçeklendirir
                                    .frame(width: 25, height: 25) // İstenilen boyutu ayarlar
                                    .padding()
                            }
                            Spacer()
                        }
                        Spacer()
                        
                    }
                    
                    SideMenu(
                        isShowing: $presentSideMenu,
                        content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu))
                    )
                }
            
            .accentColor(.white)
        }
    }
    
}
