//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Manoli on 09/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "💀", "👾", "👽", "🙀", "🕸", "🦴", "🤖", "☠️", "👺"]
        
        // Start up with a random number of pairs of cards between 2 and 5 pairs
        let numberOfPairs = Int.random(in: 2...5)
        
        // Extra Credit item - Select random offset from emojis
        let randomOffset = Int.random(in: 0 ... emojis.count - numberOfPairs)
        
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            return emojis[pairIndex + randomOffset]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
