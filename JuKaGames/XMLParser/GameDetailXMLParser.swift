//
//  GameDetailXMLParser.swift
//  JuKaGames
//
//  Created by Katja Koerber on 18.02.26.
//

import Foundation

final class GameDetailXMLParser: NSObject, XMLParserDelegate {
    private var gameDetail = GameDetail()
    private var currentValue = ""
    
    func parse(data: Data) -> GameDetail {
        print(String(decoding: data, as: UTF8.self))
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
        return gameDetail
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
          if elementName == "minplayers" {
              if let value = attributeDict["value"] {
                  gameDetail.minPlayer = Int(value) ?? -2
              }
          }
          if elementName == "maxplayers" {
              if let value = attributeDict["value"] {
                  gameDetail.maxPlayer = Int(value) ?? -2
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
        case "description":
            gameDetail.description = value
        case "image":
            gameDetail.image = URL(string: value)
        default:
            break
        }
    }
}
