//
//  gradientView.swift
//  IOS8SwiftGradientsCoreGraphicsTutorial
//
//  Created by Arthur Knopper on 28/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class gradientView: UIView {

  override func drawRect(rect: CGRect) {
      // 1
      var currentContext = UIGraphicsGetCurrentContext()
      
      // 2
      CGContextSaveGState(currentContext);
      
      // 3
      var colorSpace = CGColorSpaceCreateDeviceRGB()
      
      // 4
      var startColor = UIColor.redColor();
      var startColorComponents = CGColorGetComponents(startColor.CGColor)
      var endColor = UIColor.blueColor();
      var endColorComponents = CGColorGetComponents(endColor.CGColor)
    
      // 5
      var colorComponents
        = [startColorComponents[0], startColorComponents[1], startColorComponents[2], startColorComponents[3], endColorComponents[0], endColorComponents[1], endColorComponents[2], endColorComponents[3]]
      
      // 6
      var locations:[CGFloat] = [0.0, 1.0]
      
      // 7
      var gradient = CGGradientCreateWithColorComponents(colorSpace,&colorComponents,&locations,2)
    
      var startPoint = CGPointMake(0, self.bounds.height)
      var endPoint = CGPointMake(self.bounds.width, self.bounds.height)
    
      // 8
      CGContextDrawLinearGradient(currentContext,gradient,startPoint,endPoint, 0)
    
      // 9
      CGContextRestoreGState(currentContext);
    }
}
