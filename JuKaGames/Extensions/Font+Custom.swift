//
//  Font+Custom.swift
//  JuKaGames
//
//  Created by Katja Koerber on 11.02.26.
//

import SwiftUI

extension Font {
    enum PrimaryFont: String {
        case regular = "Albert Sans"
        case bold = "Albert Sans Bold"
        case semiBold = "Albert Sans SemiBold"
    }

    static func primaryFont(_ font: PrimaryFont, size: CGFloat) -> Font {
        return .custom(font.rawValue, size: size)
    }
}

extension Font {
    static func titleFont(size: CGFloat) -> Font {
        return .custom("Bungee", size: size)
    }
}

extension UIFont {
    enum PrimaryFont: String {
        case regular = "Albert Sans"
        case bold = "Albert Sans Bold"
        case semiBold = "Albert Sans SemiBold"
    }

    static func primaryFont(_ font: PrimaryFont, size: CGFloat) -> UIFont {
        return UIFont(name: font.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}

extension UIFont {
    static func titleFont(size: CGFloat) -> UIFont {
        return UIFont(name: ("Bungee"), size: size) ?? UIFont.systemFont(ofSize: size)
    }
}

