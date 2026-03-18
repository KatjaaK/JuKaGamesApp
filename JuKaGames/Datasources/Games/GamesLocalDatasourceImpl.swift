//
//  GamesLocalDatasourceImpl.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.03.26.
//

import Foundation
import CoreData

class GamesLocalDatasourceImpl: GamesLocalDatasource {
    
    private let context: NSManagedObjectContext
    private let freshnessThreshold: TimeInterval = 60 * 60 * 24 // 1 day
    
    init(context: NSManagedObjectContext = CoreDataStack.shared.context) {
        self.context = context
    }
    
    func fetchGames() throws -> [Game]? {
        let request: NSFetchRequest<GameEntity> = GameEntity.fetchRequest() as! NSFetchRequest<GameEntity>
        
        let sortDescriptor = NSSortDescriptor(
            key: "name",
            ascending: true,
            selector: #selector(NSString.localizedCaseInsensitiveCompare(_:))
        )
        request.sortDescriptors = [sortDescriptor]
        
        do {
            let entities = try context.fetch(request)
            guard let lastUpdated = entities.first?.lastUpdate else { return nil }
            
            if Date().timeIntervalSince(lastUpdated) > freshnessThreshold {
                return nil
            }
            let localGames = entities
                .map { $0.toGame() }
            
            return localGames
        } catch {
            print("Failed to fetch Core Data games: \(error)")
            return nil
        }
    }
    
    func saveGames(games: [Game]) throws {
        for game in games {
            _ = GameEntity.from(game: game, context: CoreDataStack.shared.context)
        }
        if CoreDataStack.shared.context.hasChanges {
            try CoreDataStack.shared.context.save()
        }
    }
    
    func clearGames() throws {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GameEntity")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        deleteRequest.resultType = .resultTypeObjectIDs
            
        let result = try CoreDataStack.shared.context.execute(deleteRequest) as? NSBatchDeleteResult
            
        if let objectIDs = result?.result as? [NSManagedObjectID], !objectIDs.isEmpty {
            let changes = [NSDeletedObjectsKey: objectIDs]
            NSManagedObjectContext.mergeChanges(fromRemoteContextSave: changes, into: [CoreDataStack.shared.context])
        }
    }
}

