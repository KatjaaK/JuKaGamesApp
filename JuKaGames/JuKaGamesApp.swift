//
//  JuKaGamesApp.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import SwiftUI

@main
struct JuKaGamesApp: App {
    
    init() {
        let titleFont = UIFont(name: "Bungee", size: .font_size_h1)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(Color("font_color")),
            .font: titleFont ?? UIFont.systemFont(ofSize: .font_size_h1)
        ]
        
        appearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor(Color("font_color")),
            .font: titleFont ?? UIFont.systemFont(ofSize: .font_size_h1)
        ]
        
        appearance.backgroundColor = UIColor(Color("background_color"))
        
        UINavigationBar.appearance().standardAppearance = appearance
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        // Hintergrund- und Vordergrundfarben definieren
        tabBarAppearance.backgroundColor = UIColor(Color("secondary_color"))
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = .white
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(Color("font_color"))]

        // Appearance setzen
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    var body: some Scene {
        WindowGroup {
            JuKaTabView()
        }
    }
}
// REMOVED

/*
 struct CustomTabView: View {
     init() {
         let appearance = UITabBarAppearance()
         appearance.configureWithOpaqueBackground()
         appearance.backgroundColor = .systemBlue // Hintergrund der Bar

         // Farbe für den AKTIVEN Zustand (Icon & Text)
         appearance.stackedLayoutAppearance.selected.iconColor = .white
         appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]

         // Farbe für den INAKTIVEN Zustand (Optional)
         appearance.stackedLayoutAppearance.normal.iconColor = .lightGray
         appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]

         UITabBar.appearance().standardAppearance = appearance
         UITabBar.appearance().scrollEdgeAppearance = appearance
     }

     var body: some View {
         TabView {
             Text("Dashboard")
                 .tabItem { Label("Home", systemImage: "house") }
         }
     }
 }

 */

