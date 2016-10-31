//
//  Card.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/25/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation
import UIKit

class Card
{
    internal var backImage: UIImage
    {
        get { return self.backImage }
        set(backImage){ self.backImage = backImage }
    }
    internal var isFaceUp : Bool
    {
        get{ return self.isFaceUp }
        set(isFaceUp){ self.isFaceUp = isFaceUp }
    }
    
    init()
    {
        backImage = UIImage(named: "cardback")!
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
 
}