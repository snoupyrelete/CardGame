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
    let game = MatchingGame()
    
    @IBOutlet weak var scoreLabel: UILabel!
//    {
//        didSet
//        {
//            scoreLabel.text = String(game.score)
//        }
//    }
      @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBAction func cardButtonPressed(sender: AnyObject)
    {
        game.playGame()
        clickCount += 1
        print(clickCount)
        cardLabel.text = String(clickCount)
//        var score = game.score
//        {
//            didSet
//            {
//                scoreLabel.text = String(score)
//            }
//        }

        //cardButton.backgroundImageForState(.Normal) = UIImage(named: "c02")
        //cardButton.imageView?.image = UIImage(named: "c02")
//        let card1 = game.hand[0].toString()
//        let card2 = game.hand[1].toString()
//        print("c1:\(card1) c2: \(card2)")
        if let currentCard = newDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
    }

    override func viewDidLoad()
    {
        game.startGame()
        highScoreLabel.text = "High Score: \(String(game.highScore))"
        //MatchingGame.playGame(MatchingGame)
//        for (var i = 0; i < x.cards.count; i += 1)
//        
//        let y = newDeck.cards as! [PlayingCard]
//        
//        for (var i = 0; i < newDeck.cards.count; i++)
//
//        {
//            print(y[i].rank)
//            print(y[i].suit)
//        }
        
        print("-------")
        print (newDeck.cards.count)
    }
}
