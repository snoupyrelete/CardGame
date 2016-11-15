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
    /**
    Draws from the top of the deck
     */
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
        
//        var drawnCard = Card()
//        return drawnCard
        
    }
    /**
    Draws a random card from the deck
    */
    func drawRandomCard() -> Card!
    {
        var drawnRandomCard = Card()
        return drawnRandomCard
    }
    
}
