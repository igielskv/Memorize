//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Manoli on 09/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "💀", "👾"]
        
        // Start up with a random number of pairs of cards between 2 and 5 pairs
        let numberOfPairs = Int.random(in: 2...5)
        
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            return emojis[pairIndex]
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
}
