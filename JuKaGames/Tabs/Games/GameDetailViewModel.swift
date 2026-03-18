//
//  GameDetailViewModel.swift
//  JuKaGames
//
//  Created by Katja Koerber on 09.03.26.
//

import Foundation

@MainActor
class GameDetailViewModel: ObservableObject {
    
    @Published var gameDetail: GameDetail?
    let game: Game
    
    enum State {
        case loading
        case content
        case error
    }
    
    private var state: State = .loading
    
    var playerCount: String {
        if let maxPlayer = gameDetail?.maxPlayer, let minPlayer = gameDetail?.minPlayer {
            if maxPlayer == minPlayer {
                return String(maxPlayer)
            } else {
                return String(minPlayer) + "-" + String(maxPlayer)
            }
        } else {
            return ""
        }
    }

    
    init(game: Game) {
        self.game = game
    }
    
    func onAppear() async {
        switch state {
        case .loading:
            do {
                gameDetail = try await JuKaGames.shared.gameDetailRepository.fetchGameDetails(for: game.objectId)
                state = .content
            } catch(let error) {
                print("error: \(error.localizedDescription)")
                state = .error
            }
        default:
            break
        }
    }
}
