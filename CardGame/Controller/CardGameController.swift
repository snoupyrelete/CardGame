//
//  CardGameController.swift
//  CardGame
//
//  Created by Robson, Dylan on 10/27/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation
import UIKit

class CardGameController: UIViewController
{
    //let deck = Deck()
    @IBOutlet weak var cardImage: UIImageView!
    override func viewDidLoad()
    {
        var x = PlayingCardDeck()
        for (var i = 0; i < x.cards.count; i++)
        {
            print(x.cards[i].rank)
            print(x.cards[i].suit)
        }
        print("-------")
        print (x.cards.count)
    }
    
}