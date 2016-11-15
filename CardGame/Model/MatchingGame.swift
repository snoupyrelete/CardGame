
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
    private var deck = PlayingCardDeck()
    private var hand = [PlayingCard]()
    private var matches = [PlayingCard]()
    
    func checkMatch(var hand: [PlayingCard]) -> Bool
    {
        for outerIndex in 0..<hand.count
        {
            for innerIndex in 0..<hand.count
            {
                if hand[outerIndex].rank == hand[innerIndex].rank && outerIndex != innerIndex
                {
                    matches.append(hand[outerIndex])
                    matches.append(hand[innerIndex])
                    //hand.removeAtIndex(innerIndex)
                    //hand.removeAtIndex(outerIndex)
                }
            }
        }
    }
}
