//
//  CardView.swift
//  CardGame
//
//  Created by Robson, Dylan on 11/21/16.
//  Copyright © 2016 Robson, Dylan. All rights reserved.
//

import UIKit

class CardView: UIView
{
//    internal var isFaceUp: Bool
//    internal var cardBack: UIImageView
    internal var cardFront: UIImageView
//    internal var topLabel: UILabel
//    internal var bottomLabel: UILabel
    //internal var cornerCurve: CGFloat

    override init(frame: CGRect)
    {
        self.cardFront = UIImageView()
        super.init(frame: frame)

    }
    
//    init()
//    {
//        isFaceUp = false
//        cardBack = UIImageView()
//        cardFront = UIImageView()
//        topLabel = UILabel()
//        bottomLabel = UILabel()
//        cornerCurve = CGFloat(20.00)
//    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBInspectable internal var cornerCurve : CGFloat = CGFloat(20.0)
    {
        didSet
        {
            cardFront.layer.cornerRadius = cornerCurve
        }
    }
    

    
    
}