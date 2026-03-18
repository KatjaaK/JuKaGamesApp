//
//  LinearGradient+Background.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.02.26.
//

import SwiftUI

extension LinearGradient {
    static let backgroundGradient = LinearGradient(
        colors: [(Color("background_color")),
                 Color("secondary_color")],
        startPoint: .top,
        endPoint: .bottom
     )
}
