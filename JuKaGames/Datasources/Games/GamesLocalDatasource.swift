//
//  GamesLocalDatasource.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.03.26.
//

import Foundation

protocol GamesLocalDatasource {
    func fetchGames() throws -> [Game]?
    func saveGames(games: [Game]) throws
    func clearGames() throws
}
