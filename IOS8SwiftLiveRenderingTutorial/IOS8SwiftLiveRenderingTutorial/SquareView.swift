//
//  SquareView.swift
//  IOS8SwiftLiveRenderingTutorial
//
//  Created by Arthur Knopper on 20/03/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

@IBDesignable

class SquareView: UIView {
    @IBInspectable var borderColor: UIColor = UIColor.blueColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        // Get the Graphics Context
        var context = UIGraphicsGetCurrentContext()
        
        // Set the outerline width
        CGContextSetLineWidth(context, 10.0)
        
        //CGContextSetLineWidth(context, lineWidth)
        
        // Set the outerline colour
        //UIColor.blueColor().set()
        
        borderColor.set()
        
        // Create square
        CGContextAddRect(context, rect)
        
        // Draw
        CGContextStrokePath(context)
    }
}
