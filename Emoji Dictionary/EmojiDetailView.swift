//
//  EmojiDetailView.swift
//  Emoji Dictionary
//
//  Created by Pierre Tulifau on 3/20/22.
//

import SwiftUI

struct EmojiDetailView: View {
    var emoji: Emoji
    
    
    var body: some View {
        Text(emoji.symbol).font(.system(size: 300))
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(emoji: Emoji(id: UUID(), symbol: "🏎"))
    }
}
