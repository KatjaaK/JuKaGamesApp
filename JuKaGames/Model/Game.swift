//
//  Game.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

struct Game: Identifiable, Decodable, Hashable {
    var id = UUID()
    var objectId: String = ""
    var name: String = ""
    var yearPublished: Int = 0
    var thumbnail: URL? = nil
    var numberOfPlays: Int = 0
}

extension Game {
    
    static let mockGameVoynich = Game(name: "The Voynich Puzzle",
                                      yearPublished: 2025,
                                      thumbnail: URL(string: "https://cf.geekdo-images.com/uSVXNr6eWn3vh2bQfVVLwA__small/img/T0VOw22vLDgvTs3l0-xrggwXMx4=/fit-in/200x150/filters:strip_icc()/pic8739904.jpg")!,
                                      numberOfPlays: 4)
    
    static let mockGameArborea = Game(name: "Arborea",
                                      yearPublished: 2025,
                                      thumbnail: URL(string: "https://cf.geekdo-images.com/KHT8Ex0wvRs5wAWPNo3xNg__small/img/3RNpeYrdE_ns9Q9MEJgjks73ESg=/fit-in/200x150/filters:strip_icc()/pic7230067.png")!,
                                      numberOfPlays: 4)
    
    static let mockGameList = [mockGameVoynich, mockGameArborea]
}
