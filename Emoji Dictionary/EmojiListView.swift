//
//  ContentView.swift
//  Emoji Dictionary
//
//  Created by Pierre Tulifau on 3/20/22.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis = [Emoji(id: UUID(), symbol: "🌎")
                  ,Emoji(id: UUID(), symbol: "🌌")
                  ,Emoji(id: UUID(), symbol: "🇦🇸"),
                  Emoji(id: UUID(), symbol: "🇼🇸")]
    
    
    var body: some View {
        NavigationView{
            List (emojis){ listedEmoji in
                NavigationLink(destination: EmojiDetailView(emoji: listedEmoji)){
                    Text(listedEmoji.symbol)
                }
                .navigationTitle("Emoji Dictionary - \(emojis.count)")
            }
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
