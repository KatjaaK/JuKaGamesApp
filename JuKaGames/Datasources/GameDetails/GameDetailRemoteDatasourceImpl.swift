//
//  GameDetailDatasource.swift
//  JuKaGames
//
//  Created by Katja Koerber on 09.03.26.
//

import Foundation

class GameDetailRemoteDatasourceImpl: GameDetailRemoteDatasource {
    
    let thingEndpoint = "https://boardgamegeek.com/xmlapi2/thing?"
    private let bearerToken = "Bearer REMOVED"
    
    func fetchDetails(for objectId: String) async throws -> GameDetail {
        
        let request = try getRequest(for: objectId)
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
                200..<300 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }
        
        let gameDetail = parseGameDetails(data: data)
        
        return gameDetail
    }
    
    private func getRequest(for objectId: String) throws -> URLRequest{
        
        guard let url = URL(string: thingEndpoint + "id=" + objectId) else {
            throw URLError(.badURL)
        }
        var request = URLRequest(url: url)
        request.setValue(bearerToken, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        return request
    }
    
    private func parseGameDetails(data: Data) -> GameDetail {
        let parser = GameDetailXMLParser()
        let gameDetails = parser.parse(data: data)
        return gameDetails
    }
}
