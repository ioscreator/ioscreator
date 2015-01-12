//
//  MyView.swift
//  IOS8SwiftCollisionDetectionTutorial
//
//  Created by Arthur Knopper on 12/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
//import Quartz

class MyView: UIView {

  
  override func drawRect(rect: CGRect) {
    drawLineFromPoint(0, toPoint: bounds.size.width/3, pointY: bounds.size.height - 100.0)
    drawLineFromPoint(bounds.size.width/3, toPoint:bounds.size.width*0.67, pointY:bounds.size.height - 150.0)
    drawLineFromPoint(bounds.size.width*0.67, toPoint:bounds.size.width, pointY:bounds.size.height - 100.0)
  }
  
  func drawLineFromPoint(fromX: CGFloat, toPoint toX: CGFloat, pointY y: CGFloat) {
    var currentContext = UIGraphicsGetCurrentContext()
    CGContextSetLineWidth(currentContext,5.0)
    CGContextMoveToPoint(currentContext, fromX, y)
    CGContextAddLineToPoint(currentContext, toX, y)
    CGContextStrokePath(currentContext)
  }
  
  
  
  
  

}
