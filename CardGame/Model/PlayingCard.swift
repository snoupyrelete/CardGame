//
//  PlayingCard.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/25/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation
import UIKit

class PlayingCard: Card
{
    let tempCard = Card()
    
    internal var suit: String
    internal var color: UIColor
    internal var rank: Int
    
    override init()
    {
        suit = String()
        color = UIColor.redColor()
        rank = 0
        super.init()
    }
    
    init(withRank: Int, ofSuit: String)
    {
        
        suit = ofSuit
        color = UIColor.redColor()
        rank = withRank
        super.init()
    }
    
    override func toString() -> String
    {
        let facing: String
        if self.isFaceUp
        {
            facing = "face up"
        } else {
            facing = "face down"
        }
        
        let description = "This PlayingCard has a rank of \(rank), a color of \(color), and is of the \(suit) suit, it is \(facing)"
        return description
    }
    
    // 'class' func same as static in Java, don't need to make an instance.
    // This method is visible without creating an instance of the class in question.
    
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func validSuits() -> [String]
    {
        return ["❤️","♠️","♦️","♣️"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    
}