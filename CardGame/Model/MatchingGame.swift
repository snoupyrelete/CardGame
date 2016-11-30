
//
//  MatchingGame.swift
//  CardGame
//
//  Created by Robson, Dylan on 11/15/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import Foundation

class MatchingGame
{
    internal var deck = PlayingCardDeck()
    internal var hand = [PlayingCard]()
    internal var score: Int
    var highScore: Int
    private var matches = [PlayingCard]()
    
    init()
    {
        self.deck = PlayingCardDeck()
        self.hand = [PlayingCard]()
        self.score = 0
        self.highScore = NSUserDefaults.standardUserDefaults().integerForKey("highScore")
    }
    
    func startGame() -> Void
    {
        deck.shuffleDeck()
        drawCards()
    }
    
    private func drawCards() -> Void
    {
        hand.append((deck.drawCard() as? PlayingCard)!)
        hand.append((deck.drawCard() as? PlayingCard)!)
    }

    

    func checkMatch() -> Bool
    {
        let hasMatch: Bool
        if hand[0].rank == hand[1].rank || hand[0].suit == hand[1].suit
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
    }
    
    func playGame() -> Void
    {
        if deck.cards.count > 0
        {
            if checkMatch()
            {
                score += 5
                            }
            else
            {
                score -= 2
            }
            hand.removeAll()
            drawCards()
        }
        else
        {
            gameOverWithHighScore()
        }
    
    }
    
    func gameOverWithHighScore() -> Int
    {
        //let defaults = NSUserDefaults.standardUserDefaults()
        //var highScore = defaults.integerForKey("highScore")
        
        if score > highScore
        {
            NSUserDefaults.standardUserDefaults().setInteger(score, forKey: "highScore")
            print("New highscore of \(score)")
        }
        print("Score:\(score)")
        return highScore
    }

    
    
    /*
    *More complex match checker, to check more than 2 matches.
    */
//    func checkMatch(var hand: [PlayingCard]) -> Bool
//    {
//        for outerIndex in 0..<hand.count
//        {
//            for innerIndex in 0..<hand.count
//            {
//                if hand[outerIndex].rank == hand[innerIndex].rank && outerIndex != innerIndex
//                {
//                    matches.append(hand[outerIndex])
//                    matches.append(hand[innerIndex])
//                    //hand.removeAtIndex(innerIndex)
//                    //hand.removeAtIndex(outerIndex)
//                }
//            }
//        }
//    }
    
}
