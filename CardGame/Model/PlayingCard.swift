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
    
//    init()
//    {
//        suit = String()
//        color = UIColor()
//        rank = Int()
//        frontImage = UIImage()
//    }
}