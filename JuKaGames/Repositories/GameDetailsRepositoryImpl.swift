//
//  GameDetailsRepositoryImpl.swift
//  JuKaGames
//
//  Created by Katja Koerber on 09.03.26.
//

import Foundation


class GameDetailsRepositoryImpl: GameDetailsRepository {
    
    let datasource: GameDetailRemoteDatasource
    
    init(datasource: GameDetailRemoteDatasource) {
        self.datasource = datasource
    }
    
    func fetchGameDetails(for id: String) async throws -> GameDetail {
        return try await datasource.fetchDetails(for: id)
    }
}
