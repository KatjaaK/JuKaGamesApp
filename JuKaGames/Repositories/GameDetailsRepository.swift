//
//  GameDetailsRepository.swift
//  JuKaGames
//
//  Created by Katja Koerber on 09.03.26.
//

import Foundation

protocol GameDetailsRepository {
    
    func fetchGameDetails(for id: String) async throws -> GameDetail
}
