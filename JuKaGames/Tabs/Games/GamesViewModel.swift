//
//  GamesViewModel.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

@MainActor
class GamesViewModel: ObservableObject {
    
    enum State {
        case loading
        case content
        case error
    }
    
    @Published var games = [Game]()
    @Published private(set) var state: State = .loading
    
    init() {}
    
    func onAppear() async {
        switch state {
        case .loading:
            do {
                self.games = try await JuKaGames.shared.gameRepository.fetchGames()
                self.state = .content
            } catch {
                self.state = .error
            }
        default:
            break
        }
    }
}
