//
//  GameDetailView.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.02.26.
//

import SwiftUI
import NukeUI

struct GameDetailView: View {
    
    @StateObject var viewModel: GameDetailViewModel
    
    init(game: Game) {
        _viewModel = StateObject(wrappedValue: GameDetailViewModel(game: game))
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: .spacing_medium) {
                if let url = viewModel.gameDetail?.image {
                    GamesImageView(url: url, width: 300, height: 300)
                }
                Text(viewModel.game.name)
                    .foregroundColor(Color("font_color"))
                    .font(.primaryFont(.semiBold,
                                       size: .font_size_h1))
                Text("Player count: " + viewModel.playerCount)
                    .foregroundColor(Color("font_color"))
                    .font(.primaryFont(.regular,
                                       size: .font_size_medium))
                JustifiedText(text: viewModel.gameDetail?.description ?? "")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color("font_color"))
            }
            .padding(.horizontal, .spacing_x_large)
        }
        .task {
            await viewModel.onAppear()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle(viewModel.game.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(LinearGradient.backgroundGradient)
    }
}

#Preview {
    GameDetailView(game: Game.mockGameArborea)
}
