//
//  JuKaTabView.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.03.26.
//

import SwiftUI

struct JuKaTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            GamesView()
                .tabItem {
                    Label("Games", systemImage: "die.face.6")
                }
                .tag(0)
            GamePlaysView()
                .tabItem {
                    Label("Plays", systemImage: "play")
                }
                .tag(1)
            StatisticsView()
                .tabItem {
                    Label("Statistics", systemImage: "chart.bar")
                }
                .tag(2)
        }
    }
}

#Preview {
    JuKaTabView()
}
