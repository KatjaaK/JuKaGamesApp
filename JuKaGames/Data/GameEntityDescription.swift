//
//  GameEntityDescription.swift
//  JuKaGames
//
//  Created by Katja Koerber on 17.03.26.
//

import CoreData

enum GameEntityDescription {
    
    static func make() -> NSEntityDescription {
        let entity = NSEntityDescription()
        entity.name = "GameEntity"
        entity.managedObjectClassName = NSStringFromClass(GameEntity.self)
        
        entity.properties = [
            objectIdAttribute(),
            nameAttribute(),
            lastUpdatedAttribute(),
            thumbnailAttribute(),
            yearPublishedAttribute(),
            numberOfPlaysAttribute()
        ]
        
        return entity
    }
    
    private static func objectIdAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "objectId"
        attr.attributeType = .stringAttributeType
        attr.isOptional = false
        return attr
    }
    
    private static func nameAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "name"
        attr.attributeType = .stringAttributeType
        attr.isOptional = false
        return attr
    }
    
    private static func lastUpdatedAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "lastUpdate"
        attr.attributeType = .dateAttributeType
        attr.isOptional = false
        return attr
    }
    
    private static func thumbnailAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "thumbnail"
        attr.attributeType = .stringAttributeType
        attr.isOptional = true
        return attr
    }
    
    private static func yearPublishedAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "yearPublished"
        attr.attributeType = .integer16AttributeType
        attr.isOptional = true
        return attr
    }
    
    private static func numberOfPlaysAttribute() -> NSAttributeDescription {
        let attr = NSAttributeDescription()
        attr.name = "numberOfPlays"
        attr.attributeType = .integer32AttributeType
        attr.isOptional = true
        return attr
    }
}
