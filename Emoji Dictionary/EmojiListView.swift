//
//  ContentView.swift
//  Emoji Dictionary
//
//  Created by Pierre Tulifau on 3/20/22.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis = [Emoji(id: UUID(), symbol: "🌎", definition: "Earth", rating: 3)
                  ,Emoji(id: UUID(), symbol: "🌌", definition: "Galaxy", rating: 4)
                  ,Emoji(id: UUID(), symbol: "🇦🇸" ,definition: "American Samoa", rating: 5),
                  Emoji(id: UUID(), symbol: "🇼🇸" ,definition: "Samoa", rating: 5)]
    
    
    var body: some View {
        NavigationView{
            List (emojis){ listedEmoji in
                NavigationLink(destination: EmojiDetailView(emoji: listedEmoji)){
                    Text("\(listedEmoji.symbol) - \(listedEmoji.definition)")
                }
                .navigationTitle("Emoji Dictionary - \(emojis.count)")
            }
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
