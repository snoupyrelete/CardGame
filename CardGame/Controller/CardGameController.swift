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
    
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var rightCardButton: UIButton!


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
    @IBAction func cardButtonPressed(sender: AnyObject)
    {
//        if game.gameOverWithHighScore()
//        {
//            
//        }
        game.playGame()
        score = game.score
        clickCount += 1
        cardLabel.text = String(clickCount)
        cardButton.setTitle("\(game.hand[0].getCardData())", forState: UIControlState.Normal)
        rightCardButton.setTitle("\(game.hand[1].getCardData())", forState: UIControlState.Normal)

        
//        if let leftCard = newDeck.drawRandomCard() as? PlayingCard
//        {
//            cardButton.setTitle("\(leftCard.getCardData())", forState: UIControlState.Normal)
//            //rightCardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
//
//        }
//        else
//        {
//            cardLabel.text = "empty - reinit"
//            newDeck = PlayingCardDeck()
//        }
//        if let rightCard = newDeck.drawRandomCard() as? PlayingCard
//        {
//            rightCardButton.setTitle("\(rightCard.getCardData())", forState: UIControlState.Normal)
//            //rightCardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
//            
//        }
    }

    override func viewDidLoad()
    {
        game.startGame()
        highScoreLabel.text = "High Score: \(String(game.highScore))"
    }
}
