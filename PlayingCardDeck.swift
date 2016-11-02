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
    override init()
    {
        super.init()
       
        for suit in PlayingCard.validSuits()
        {
            for rank in 1...PlayingCard.maxRank()
            {
                self.cards.append(PlayingCard(withRank: rank, ofSuit: suit))
            }
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