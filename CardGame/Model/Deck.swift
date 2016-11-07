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
        for card in cards
        {
            
        }
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