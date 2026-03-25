//
//  GamesRepositoryImpl.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

class GamesRepositoryImpl: GamesRepository {
    
    private let remoteDatasource: GamesRemoteDatasource
    private let localDatasource: GamesLocalDatasource
    
    init(remoteDatasource: GamesRemoteDatasource,
         localDatasource: GamesLocalDatasource) {
        self.remoteDatasource = remoteDatasource
        self.localDatasource = localDatasource
    }
    
    func fetchGames() async throws -> [Game] {
//        if let localGames = try localDatasource.fetchGames() {
//            print("fetched local games")
//            return localGames
//        } else {
            let games = try await remoteDatasource.fetchGames()
            localDatasource.clearGames()
            localDatasource.saveGames(games: games)
            print("fetched remote games")
            return games
//        }

    }
    
}
