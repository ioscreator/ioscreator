//
//  ViewController.swift
//  IOS8SwiftAttachBehaviourTutorial
//
//  Created by Arthur Knopper on 24/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var smallView: UIView!
  @IBOutlet var blueView: UIView!
  
  var anchorPoint: CGPoint!
  var attachment: UIAttachmentBehavior!
  var animator: UIDynamicAnimator!
  var gravity: UIGravityBehavior!
  
  @IBAction func handleTap(sender: UITapGestureRecognizer) {
    attachment.anchorPoint = sender.locationInView(view)
    smallView.center = sender.locationInView(view)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    anchorPoint = smallView.center
    
    attachment = UIAttachmentBehavior(item: blueView, attachedToAnchor: anchorPoint)
    attachment.length = 100
    attachment.frequency = 10
    attachment.damping = 5
    
    animator = UIDynamicAnimator(referenceView: view)
    animator.addBehavior(attachment)
    
    gravity = UIGravityBehavior(items: [blueView])
    animator.addBehavior(gravity)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

