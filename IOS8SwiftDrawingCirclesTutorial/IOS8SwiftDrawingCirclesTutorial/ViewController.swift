//
//  ViewController.swift
//  IOS8SwiftDrawingCirclesTutorial
//
//  Created by Arthur Knopper on 12/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.lightGrayColor()
  }
  
  override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
    if let touch = touches as? Set<UITouch> {
        // Set the Center of the Circle
        var circleCenter = touch.first!.locationInView(view)
        
        // Set a random Circle Radius
        var circleWidth = CGFloat(25 + (arc4random() % 50))
        var circleHeight = circleWidth
        
        
        // Create a new CircleView
        var circleView = CircleView(frame: CGRectMake(circleCenter.x, circleCenter.y, circleWidth, circleHeight))
        view.addSubview(circleView)
    }
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

