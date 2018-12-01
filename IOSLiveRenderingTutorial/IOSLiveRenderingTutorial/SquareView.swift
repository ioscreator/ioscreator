//
//  SquareView.swift
//  IOSLiveRenderingTutorial
//
//  Created by Arthur Knopper on 30/11/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

@IBDesignable

class SquareView: UIView {
    @IBInspectable var borderColor: UIColor = UIColor.blue {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
        
            // Set the outerline width
            context.setLineWidth(10.0)
        
            // Set the outerline colour
            borderColor.set()
        
            // Create square
            context.addRect(rect)
            
            // Draw
            context.strokePath()
        }
    }

}
