//
//  ShapeView.swift
//  IOS9DrawShapesTutorial
//
//  Created by Arthur Knopper on 24/08/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//


import UIKit

class ShapeView: UIView {
    var currentShapeType: Int = 0

   init(frame: CGRect, shape: Int) {
        super.init(frame: frame)
        self.currentShapeType = shape
    }
    
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func drawRect(rect: CGRect) {
        switch currentShapeType {
        case 0: drawLines()
        case 1: drawRectangle()
        case 2: drawCircle()
        default: print("default")
        }

        
    }
    
    func drawLines() {
        //1
        let ctx = UIGraphicsGetCurrentContext()
        
        //2
        CGContextBeginPath(ctx)
        CGContextMoveToPoint(ctx, 20.0, 20.0)
        CGContextAddLineToPoint(ctx, 250.0, 100.0)
        CGContextAddLineToPoint(ctx, 100.0, 200.0)
        CGContextSetLineWidth(ctx, 5)
        
        //3
        CGContextClosePath(ctx)
        CGContextStrokePath(ctx)
    }
    
    func drawRectangle() {
        let center = CGPointMake(self.frame.size.width / 2.0, self.frame.size.height / 2.0)
        let rectangleWidth:CGFloat = 100.0
        let rectangleHeight:CGFloat = 100.0
        
        
        let ctx = UIGraphicsGetCurrentContext()
        

        //4
        CGContextAddRect(ctx, CGRectMake(center.x - (0.5 * rectangleWidth), center.y - (0.5 * rectangleHeight), rectangleWidth, rectangleHeight))
        CGContextSetLineWidth(ctx, 10)
        CGContextSetStrokeColorWithColor(ctx, UIColor.grayColor().CGColor)
        CGContextStrokePath(ctx)
            
        //5
        CGContextSetFillColorWithColor(ctx, UIColor.greenColor().CGColor)

        
        CGContextAddRect(ctx, CGRectMake(center.x - (0.5 * rectangleWidth), center.y - (0.5 * rectangleHeight), rectangleWidth, rectangleHeight))
        
        CGContextFillPath(ctx)
    }
    
    func drawCircle() {
        let center = CGPointMake(self.frame.size.width / 2.0, self.frame.size.height / 2.0);
        let ctx = UIGraphicsGetCurrentContext()
        CGContextBeginPath(ctx)
        
        //6 
        CGContextSetLineWidth(ctx, 5)
        
        let x:CGFloat = center.x
        let y:CGFloat = center.y
        let radius: CGFloat = 100.0
        let endAngle: CGFloat = CGFloat(2 * M_PI)
        
        CGContextAddArc(ctx, x, y, radius, 0, endAngle, 0)
        
        CGContextStrokePath(ctx)
    }

    
            
            
            
        
        
        
        
        
        
        

}
