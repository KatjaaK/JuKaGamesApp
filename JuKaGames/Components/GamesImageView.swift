//
//  GamesImageView.swift
//  JuKaGames
//
//  Created by Katja Koerber on 16.02.26.
//

import SwiftUI
import NukeUI

struct GamesImageView: View {
    
    let url: URL
    
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var maxWidth: CGFloat? = nil
    
    var alignment: Alignment = .center
    var contentMode: ContentMode = .fill
    
    var body: some View {
        LazyImage(url: url) { state in
            if let image = state.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: contentMode)
            } else if state.error != nil {
                VStack {
                    Text("Error on loading image")
                }
            } else {
                Color.gray.opacity(0.3)
            }
        }
        .frame(width: width, height: height, alignment: alignment)
        .frame(maxWidth: maxWidth)
        .cornerRadius(.corner_medium)
        .clipped()
    }
    
    func printImageSource(for state: LazyImageState) {
        if case let .success(response) = state.result {
            switch response.cacheType {
            case .memory:
                print("Loaded from MEMORY cache")
            case .disk:
                print("Loaded from DISK cache")
            case .none:
                print("Loaded from NETWORK")
            }
        }
    }
}

#Preview {
    GamesImageView(url: URL(string: "https://picsum.photos/350")!,
                   width: 350,
                   height: 350)
}
