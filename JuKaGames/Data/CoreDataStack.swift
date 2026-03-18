//
//  CoreDataStack.swift
//  JuKaGames
//
//  Created by Katja Koerber on 17.03.26.
//

import Foundation
import CoreData

final class CoreDataStack {
    static let shared = CoreDataStack()
    
    var container: NSPersistentContainer
    
    var context: NSManagedObjectContext { container.viewContext }
    
    private init() {
        let model = CoreDataModelFactory.makeModel()
        
        container = NSPersistentContainer(
            name: "JukaGamesData",
            managedObjectModel: model
        )
        
        let description = container.persistentStoreDescriptions.first!
        description.shouldMigrateStoreAutomatically = true
        description.shouldInferMappingModelAutomatically = true
        
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Core Data failed to load store: \(error)")
            }
        }
    
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
