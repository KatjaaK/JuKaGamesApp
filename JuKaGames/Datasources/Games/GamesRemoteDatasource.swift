//
//  GamesRemoteDatasource.swift
//  JuKaGames
//
//  Created by Katja Koerber on 02.02.26.
//

import Foundation

protocol GamesRemoteDatasource {
    func fetchGames() async throws -> [Game]
}
