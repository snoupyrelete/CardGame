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
    
    private lazy var clickCount = Int()
    private lazy var newDeck = PlayingCardDeck()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBAction func cardButtonPressed(sender: AnyObject)
    {
        clickCount += 1
        print(clickCount)
        cardLabel.text = String(clickCount)
        //cardButton.backgroundImageForState(.Normal) = UIImage(named: "c02")
        cardButton.imageView?.image = UIImage(named: "c02")
    }

    

    
    override func viewDidLoad()
    {
        

        for (var i = 0; i < x.cards.count; i += 1)
        
        let y = newDeck.cards as! [PlayingCard]
        
        for (var i = 0; i < newDeck.cards.count; i++)

        {
            print(y[i].rank)
            print(y[i].suit)
        }
        
        print("-------")
        print (newDeck.cards.count)
    }
}
