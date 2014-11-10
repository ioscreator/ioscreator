//
//  ViewController.swift
//  IOS8SwiftSnapBehaviourTutorial
//
//  Created by Arthur Knopper on 10/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  var animator:UIDynamicAnimator!
  var snapBehaviour:UISnapBehavior!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Create the Tap Gesture Recognizer
    var tapGesture = UITapGestureRecognizer(target: self, action: Selector("userHasTapped:"))
    self.view.addGestureRecognizer(tapGesture)
    
    // Create the Dynamic Animator
    animator = UIDynamicAnimator(referenceView: self.view)
  }
  
  func userHasTapped(tap:UITapGestureRecognizer) {
    var touchPoint = tap.locationInView(self.view)
    if snapBehaviour != nil {
      animator.removeBehavior(snapBehaviour)
    }
    
    snapBehaviour = UISnapBehavior(item: imageView, snapToPoint: touchPoint)
    snapBehaviour.damping = 0.3
    animator.addBehavior(snapBehaviour)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

