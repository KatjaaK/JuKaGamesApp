//
//  GameDetailRemoteDatasource.swift
//  JuKaGames
//
//  Created by Katja Koerber on 09.03.26.
//

import Foundation


protocol GameDetailRemoteDatasource {
    func fetchDetails(for objectId: String) async throws -> GameDetail
}
