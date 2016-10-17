//
//  GradientView.swift
//  IOS10DrawGradientsTutorial
//
//  Created by Arthur Knopper on 17/10/2016.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override func draw(_ rect: CGRect) {
        // 1
        guard let currentContext = UIGraphicsGetCurrentContext() else { return }
        
        // 2
        currentContext.saveGState()
        
        // 3
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        // 4
        let startColor = UIColor.red
        guard let startColorComponents = startColor.cgColor.components else { return }
        
        let endColor = UIColor.blue
        guard let endColorComponents = endColor.cgColor.components else { return }
        
        // 5
        let colorComponents: [CGFloat]
            = [startColorComponents[0], startColorComponents[1], startColorComponents[2], startColorComponents[3], endColorComponents[0], endColorComponents[1], endColorComponents[2], endColorComponents[3]]
        
        // 6
        let locations:[CGFloat] = [0.0, 1.0]
        
        // 7
        guard let gradient = CGGradient(colorSpace: colorSpace,colorComponents: colorComponents,locations: locations,count: 2) else { return }
        
        let startPoint = CGPoint(x: 0, y: self.bounds.height)
        let endPoint = CGPoint(x: self.bounds.width,y: self.bounds.height)
        
        // 8
        currentContext.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        
        // 9
        currentContext.restoreGState()
    }

}
