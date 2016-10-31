//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/31/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation

class PlayingCardDeck: Deck
{
    lazy var cards = [PlayingCard]()
    
    override init()
    {
       // cards = [PlayingCard]
        for suit in PlayingCard.validSuits()
        {
            for rank in PlayingCard.validRanks()
            {
                //cards.append(PlayingCard(withRank: rank, ofSuit: suit))
            }
        }
    }
    
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
        Puts the deck in order
    */
    func orderDeck() -> Void
    {
        for card in cards
        {
            
        }
    }

}