//
//  ViewController.swift
//  IOSAttachmentBehaviourTutorial
//
//  Created by Arthur Knopper on 25/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var anchorPoint: CGPoint!
    var attachment: UIAttachmentBehavior!
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        attachment.anchorPoint = sender.location(in: view)
        smallView.center = sender.location(in: view)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        anchorPoint = smallView.center
        
        // 2
        attachment = UIAttachmentBehavior(item: blueView, attachedToAnchor: anchorPoint)
        attachment.length = 200
        attachment.frequency = 10
        attachment.damping = 5
        
        // 3
        animator = UIDynamicAnimator(referenceView: view)
        animator.addBehavior(attachment)
        
        // 4
        gravity = UIGravityBehavior(items: [blueView])
        animator.addBehavior(gravity)
    }


}

