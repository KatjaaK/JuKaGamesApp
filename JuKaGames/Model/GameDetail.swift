//
//  GameDetail.swift
//  JuKaGames
//
//  Created by Katja Koerber on 18.02.26.
//

import Foundation

struct GameDetail {
    var objectId: String = ""
    var minPlayer: Int = 0
    var maxPlayer: Int = 0
    var description: String = ""
    var image: URL? = nil
}

extension GameDetail {
    static let mockGameDetail = GameDetail(objectId: "123",
                                           minPlayer: 2,
                                           maxPlayer: 2,
                                           description: "dummy description",
                                           image: URL(string: "https://picsum.photos/200")!)
}
