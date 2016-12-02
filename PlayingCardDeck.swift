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
       
        //Written by Mr. Henrichsen
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
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                let index = cards.indexOf({($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank})
                let tempCard = cards.removeAtIndex(index!) as! PlayingCard
                temp.append(tempCard)
            }
        }
        cards = temp
    }
}
