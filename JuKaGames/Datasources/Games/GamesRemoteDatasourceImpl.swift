//
//  GamesDataSource.swift
//  JuKaGames
//
//  Created by Katja Koerber on 28.01.26.
//

import Foundation

class GamesRemoteDatasourceImpl: GamesRemoteDatasource {
    
    init() {}
    
    private let proxy = "https://bgg-proxy-mffs.onrender.com/bgg"
    private let endpoint = "xmlapi2/collection?username=Katjaaaa&own=1"
    
    func fetchGames() async throws -> [Game] {
    
        var components = URLComponents(string: proxy)!
        components.queryItems = [
            URLQueryItem(name: "endpoint", value: "/xmlapi2/collection?username=Katjaaaa&own=1")
        ]

        guard let url = components.url else {
            throw URLError(.badURL)
        }

        let request = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
                200..<300 ~= httpResponse.statusCode else {
            throw URLError(.badServerResponse)
        }
        
        let games = parseGames(data: data)
        return games
    }

    private func parseGames(data: Data) -> [Game] {
        let parser = GameXMLParser()
        let games = parser.parse(data: data)
        return games
    }
}
