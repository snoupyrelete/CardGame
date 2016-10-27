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
    private var color: UIColor
    
    override init()
    {
        suit = String()
        color = UIColor()
    }
}