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
    let deck = Deck()
    @IBOutlet weak var cardImage: UIImageView!
    override func viewDidLoad()
    {
        print(deck.cards.count)
        cardImage.image = UIImage(named: "c01")
       
    }
 
}