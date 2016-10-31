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
    private var suit: String
    {
        get{return self.suit}
        set(suit){self.suit = suit}
    }
    
    private var color: UIColor
    {
        get{return self.color}
        set(color){self.color = color}
    }
    
    private var rank: Int
    {
        get{return self.rank}
        set(rank){self.rank = rank}
    }
    
    private var frontImage: UIImage
    {
        get{return self.frontImage}
        set(frontImage){self.frontImage = frontImage}
    }
    
    override init()
    {
        super.init()
        
        suit = String()
        color = UIColor.redColor()
        rank = 0
        frontImage = UIImage(named: "c01")!
    }
    
    init(withRank: Int, ofSuit: String)
    {
        super.init()
        suit = ofSuit
        color = UIColor.redColor()
        rank = withRank
        frontImage = UIImage(named: "c01")!

        
    }
    
    override func toString() -> String
    {
        let facing: String
        if super.isFaceUp
        {
            facing = "face up"
        } else {
            facing = "face down"
        }
        
        let description = "This PlayingCard has a rank of \(rank), a color of \(color), and is of the \(suit) suit, it is \(facing)"
        return description
    }
}