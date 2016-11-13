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
    var cardCounter = 0
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var posInDeck: UILabel!

    @IBAction func switchCard(sender: AnyObject)
    {
        cardCounter += 1
        cardImage.image = UIImage(named: "c01")!
        posInDeck.text = ""
    }
    

    
    override func viewDidLoad()
    {
        let x = PlayingCardDeck()
        let y = x.cards as! [PlayingCard]
        
        for (var i = 0; i < x.cards.count; i += 1)
        {
            print(y[i].rank)
            print(y[i].suit)
        }
        
        print("-------")
        print (x.cards.count)
    }
}
