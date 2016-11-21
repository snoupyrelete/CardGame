//
//  Card.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/25/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation

class Card
{

    internal var isFaceUp : Bool

    init()
    {
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
 
}