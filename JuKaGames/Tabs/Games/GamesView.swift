//
//  GamesView.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import SwiftUI
import NukeUI

// todo kat: nuke currently uses only memory cache, improve to use also
// disk cache

struct GamesView: View {
    
    @StateObject private var viewModel = GamesViewModel()
    
    private let imageWidth: CGFloat = 140.0
    private let imageHeight: CGFloat = 140.0
    
    @State private var path = [Game]()

    var body: some View {
        NavigationStack(path: $path) {
            List(viewModel.games) { game in
                Button {
                    path.append(game)
                } label: {
                    HStack(alignment: .top) {
                        if let imageUrl = game.thumbnail {
                            GamesImageView(url: imageUrl,
                                           width: imageWidth,
                                           height: imageHeight,
                                           alignment: .top)
                            .cornerRadius(.corner_medium)
                            .clipped()
                        }
                        VStack(alignment: .leading, spacing: .spacing_x_small) {
                            Text(game.name)
                                .foregroundColor(Color("font_color"))
                                .font(.primaryFont(.semiBold,
                                                   size: .font_size_medium))
                            Text(String(game.yearPublished))
                                .foregroundColor(Color("font_color"))
                                .font(.primaryFont(.regular,
                                                   size: .font_size_small))
                            Text("Plays: \(game.numberOfPlays)")
                                .foregroundColor(Color("font_color"))
                                .font(.primaryFont(.regular,
                                                   size: .font_size_small))
                        }
                        .padding(.leading, .spacing_small)
                        .padding(.bottom, .spacing_small)
                    }
                }
                .listRowInsets(EdgeInsets(top: .spacing_small, leading: .spacing_small, bottom: .spacing_small, trailing: .spacing_small))
                .frame(alignment: .leading)
                .listRowBackground(Color("primary_color").opacity(0.6))

            }
            .task {
                await viewModel.onAppear()
            }
            .navigationDestination(for: Game.self) { game in
                GameDetailView(game: game)
            }
            .navigationTitle("game_collection_title")
            .listRowSpacing(.spacing_medium)
            .scrollContentBackground(.hidden)
            .background(LinearGradient.backgroundGradient)
            
        }
    }
}

#Preview {
    GamesView()
}
