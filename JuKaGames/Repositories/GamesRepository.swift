//
//  GamesRepository.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

protocol GamesRepository {
    func fetchGames() async throws -> [Game]
}
