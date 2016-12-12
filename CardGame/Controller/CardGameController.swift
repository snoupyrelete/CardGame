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

    @IBOutlet weak var goButton: UIButton!


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
        if game.isGameOver
        {
            gameOverLabel.alpha = 1.0
            goButton.setTitle("Play Again", forState: .Normal)
            game.playGame()
            score = game.score
            highScoreLabel.text = String(game.highScore)
        }

        print("\(game.hand[0].getCardData())---\(game.hand[1].getCardData())")

        //let leftRank = game.hand[0].rank

        let Card1 = PlayingCard(withRank: game.hand[0].rank, ofSuit: game.hand[0].suit)
        let Card2 = PlayingCard(withRank: game.hand[1].rank, ofSuit: game.hand[1].suit)

        
        leftCard.image = UIImage(named: Card1.getCardData())
        rightCard.image = UIImage(named: Card2.getCardData())
        print(Card1.getCardData())
     
        game.playGame()
        score = game.score
        clickCount += 1
        cardLabel.text = String(clickCount)
        
    }
   
    override func viewDidLoad()
    {
        //NSUserDefaults.standardUserDefaults().removeObjectForKey("highScore")
        game.startGame()
        highScoreLabel.text = "High Score: \(String(game.highScore))"
        gameOverLabel.alpha = 0.0
    }
}
