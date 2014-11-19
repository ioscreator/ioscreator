//
//  ViewController.swift
//  IOS8SwiftSwipeGestureTutorial
//
//  Created by Arthur Knopper on 19/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var swipeLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
    var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
    
    leftSwipe.direction = .Left
    rightSwipe.direction = .Right
    
    view.addGestureRecognizer(leftSwipe)
    view.addGestureRecognizer(rightSwipe)
  }
  
  func handleSwipes(sender:UISwipeGestureRecognizer) {
    if (sender.direction == .Left) {
      println("Swipe Left")
      var labelPosition = CGPointMake(self.swipeLabel.frame.origin.x - 50.0, self.swipeLabel.frame.origin.y);
      swipeLabel.frame = CGRectMake( labelPosition.x , labelPosition.y , self.swipeLabel.frame.size.width, self.swipeLabel.frame.size.height)
    }
    
    if (sender.direction == .Right) {
      println("Swipe Right")
      var labelPosition = CGPointMake(self.swipeLabel.frame.origin.x + 50.0, self.swipeLabel.frame.origin.y);
      swipeLabel.frame = CGRectMake( labelPosition.x , labelPosition.y , self.swipeLabel.frame.size.width, self.swipeLabel.frame.size.height)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

