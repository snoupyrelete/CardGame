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
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!

    @IBOutlet weak var scoreLabel: UILabel!



    private lazy var clickCount = Int()
    private lazy var newDeck = PlayingCardDeck()
    let game = MatchingGame()
    
    var score = 0
    {
        didSet
        {
            scoreLabel.text = "Score: \(String(score))"
        }
   
    }
    @IBAction func goButton(sender: AnyObject)
    {
        print("\(game.hand[0].getCardData())---\(game.hand[1].getCardData())")

        //let leftRank = game.hand[0].rank

        let Card1 = PlayingCard(withRank: game.hand[0].rank, ofSuit: game.hand[1].suit)
        
        leftCard.image = UIImage(named: "d01")
        //cardButton.setImage(UIImage(named: "♣️01"), forState: UIControlState.Normal)
        
        game.playGame()
        score = game.score
        clickCount += 1
        cardLabel.text = String(clickCount)
    }
   
    override func viewDidLoad()
    {
        game.startGame()
        highScoreLabel.text = "High Score: \(String(game.highScore))"
    }
}
