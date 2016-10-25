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
    private var backImage: UIImage
    private var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func toString() -> String
    {
        let description = "The card is \(isFaceUp)"
        return description
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isUp() -> Bool
    {
        return isFaceUp
    }
}