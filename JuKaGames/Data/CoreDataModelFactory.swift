//
//  CoreDataModelFactory.swift
//  JuKaGames
//
//  Created by Katja Koerber on 17.03.26.
//

import CoreData

enum CoreDataModelFactory {
    static func makeModel() -> NSManagedObjectModel {
        let model = NSManagedObjectModel()
        model.entities = [
            GameEntityDescription.make()
        ]
        return model
    }
}
