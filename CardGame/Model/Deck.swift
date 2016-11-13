//
//  Deck.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/27/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation

class Deck
{
    lazy var cards = [Card]()

//    internal var size: Int

//    internal var cards: [Card]

//    init()
//    {
//        size = 52
////        for _ in 0..<size
////        {
////            cards.append(Card())
////        }
//        
//    }
   
    

    
//    func checkDeck() -> Bool
//    {
//        let a = false
//        
//        return a
//    }
    
    /**
    Shuffles the deck
    */
    func shuffleDeck() -> Void
    {
        var tempDeck = [Card]()
        while cards.count > 0
        {
            let randomIndex = Int(arc4random() % UInt32(cards.count))
            let removeCard = cards.removeAtIndex(randomIndex)
            tempDeck.append(removeCard)
        }
        cards = tempDeck
    }
    
    /**
    Cuts the deck
    */
    func cutDeck() -> Void
    {
        
    }
    
}
