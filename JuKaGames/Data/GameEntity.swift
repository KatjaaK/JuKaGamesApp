//
//  GameEntity.swift
//  JuKaGames
//
//  Created by Katja Koerber on 17.03.26.
//

import CoreData

@objc(GameEntity)
public class GameEntity: NSManagedObject {
    @NSManaged public var objectId: String
    @NSManaged public var name: String
    @NSManaged public var lastUpdate: Date
    @NSManaged public var thumbnail: String?
    @NSManaged public var yearPublished: Int16
    @NSManaged public var numberOfPlays: Int32
}


extension GameEntity {
    static func from(game: Game, context: NSManagedObjectContext) -> GameEntity {
        let entity = GameEntity(context: context)
        entity.objectId = game.objectId
        entity.name = game.name
        entity.yearPublished = Int16(game.yearPublished)
        entity.thumbnail = game.thumbnail?.absoluteString
        entity.numberOfPlays = Int32(game.numberOfPlays)
        entity.lastUpdate = Date()
        return entity
    }
    
    func toGame() -> Game {
        var thumbnailURL: URL? = nil
        if let thumbnail = self.thumbnail {
            thumbnailURL = URL(string: thumbnail)
        }
        let game = Game(objectId: self.objectId,
                        name: self.name,
                        yearPublished: Int(self.yearPublished),
                        thumbnail: thumbnailURL,
                        numberOfPlays: Int(self.numberOfPlays))
        return game
    }
}
