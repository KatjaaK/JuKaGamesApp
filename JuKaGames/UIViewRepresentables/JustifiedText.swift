//
//  JustifiedText.swift
//  JuKaGames
//
//  Created by Katja Koerber on 11.03.26.
//

import UIKit
import SwiftUI

struct JustifiedText: UIViewRepresentable {
    let text: String
    var textColor: UIColor = .white

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.primaryFont(.regular, size: .font_size_medium)
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
        uiView.preferredMaxLayoutWidth = UIScreen.main.bounds.width - (.spacing_x_large * 2)
        uiView.font = UIFont.primaryFont(.regular, size: .font_size_medium)
        uiView.textColor = textColor
    }
}
