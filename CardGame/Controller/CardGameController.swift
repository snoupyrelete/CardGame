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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!


    fileprivate lazy var clickCount = Int()
    fileprivate lazy var newDeck = PlayingCardDeck()
    var game = MatchingGame()
    
    var score = 0
    {
        didSet
        {
            scoreLabel.text = "Score: \(String(score))"
        }
    }
    
    @IBAction func goButton(_ sender: AnyObject)
    {
        if game.isGameOver
        {
            gameOverLabel.alpha = 1.0
            goButton.isEnabled = false
        }
        updateCardImage()
        
        game.playGame()
        score = game.score
        clickCount += 1
    }
   
    private func updateCardImage()
    {
        let Card1 = PlayingCard(withRank: game.hand[0].rank, ofSuit: game.hand[0].suit)
        let Card2 = PlayingCard(withRank: game.hand[1].rank, ofSuit: game.hand[1].suit)
        leftCard.image = UIImage(named: Card1.getCardData())
        rightCard.image = UIImage(named: Card2.getCardData())
    }
    
    override func viewDidLoad()
    {
        game.startGame()
        highScoreLabel.text = "High Score: \(String(game.highScore))"
        gameOverLabel.alpha = 0.0
    }
}
