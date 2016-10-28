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
    public var size: Int
    {
        get{return self.size}
        set(size){self.size = size}
    }
    
    public var cards: [Card]
    {
        get{return self.cards}
        set(cards){self.cards = cards}
    }
    init()
    {
        size = 52
//        for _ in 0..<size
//        {
//            cards.append(Card())
//        }
        
    }
   
    
    func shuffle()
    {
        
    }
}