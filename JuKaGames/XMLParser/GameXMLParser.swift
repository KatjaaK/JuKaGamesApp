//
//  GameXMLParser.swift
//  JuKaGames
//
//  Created by Katja Koerber on 02.02.26.
//

import Foundation

final class GameXMLParser: NSObject, XMLParserDelegate {
    private var games: [Game] = [Game]()
    private var currentGame: Game?
    private var currentValue = ""
    
    func parse(data: Data) -> [Game] {
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
        return games
    }
    
    // Called when an element starts: <name>
    func parser(
          _ parser: XMLParser,
          didStartElement elementName: String,
          namespaceURI: String?,
          qualifiedName qName: String?,
          attributes attributeDict: [String : String] = [:]
      ) {
          currentValue = ""
          if elementName == "item" {
              currentGame = Game()
              if let objectId = attributeDict["objectid"] {
                  currentGame?.objectId = objectId
              }
          }
    }
    
    // Called for text inside elements
    func parser(_ parser: XMLParser, foundCharacters string: String) {
      currentValue += string
    }
    
    // Called when an element ends: </name>
    func parser(
        _ parser: XMLParser,
        didEndElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?
    ) {
        let value = currentValue.trimmingCharacters(in: .whitespacesAndNewlines)

        switch elementName {
        case "name":
            currentGame?.name = value
        case "yearpublished":
            currentGame?.yearPublished = Int(value) ?? -1
        case "thumbnail":
            currentGame?.thumbnail = URL(string: value)
        case "numplays":
            currentGame?.numberOfPlays = Int(value) ?? -1
        case "item":
            if let game = currentGame {
                games.append(game)
            }
            currentGame = nil
        default:
            break
        }
    }
}
