//
//  JuKaGames.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

class JuKaGames {
    static let shared = JuKaGames()
    
    let gameRepository = GamesRepositoryImpl(remoteDatasource: GamesRemoteDatasourceImpl(),
                                             localDatasource: GamesLocalDatasourceImpl())
    
    let gameDetailRepository = GameDetailsRepositoryImpl(datasource: GameDetailRemoteDatasourceImpl())
}
