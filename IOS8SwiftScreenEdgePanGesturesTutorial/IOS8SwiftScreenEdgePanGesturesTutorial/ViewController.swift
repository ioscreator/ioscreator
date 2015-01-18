//
//  ViewController.swift
//  IOS8SwiftScreenEdgePanGesturesTutorial
//
//  Created by Arthur Knopper on 13/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var imageView: UIImageView!
  
  var screenEdgeRecognizer: UIScreenEdgePanGestureRecognizer!
  var currentRadius:CGFloat = 0.0
  
  func rotateBall(sender: UIScreenEdgePanGestureRecognizer) {
    if sender.state == .Ended {
      if self.currentRadius==360.0 {
        self.currentRadius=0.0
      }
      
      UIView.animateWithDuration(1.0, animations: {
        self.currentRadius += 90.0
        self.imageView.transform = CGAffineTransformMakeRotation((self.currentRadius * CGFloat(M_PI)) / 180.0)
      })
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    screenEdgeRecognizer = UIScreenEdgePanGestureRecognizer(target: self,
    action: "rotateBall:")
    screenEdgeRecognizer.edges = .Left
    view.addGestureRecognizer(screenEdgeRecognizer)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

