//
//  ViewController.swift
//  IOSSnapBehaviourTutorial
//
//  Created by Arthur Knopper on 24/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Create the Tap Gesture Recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        
        // Create the Dynamic Animator
        animator = UIDynamicAnimator(referenceView: view)
    }
    
    @objc func userHasTapped(tap:UITapGestureRecognizer) {
        let touchPoint = tap.location(in: view)
        if snapBehaviour != nil {
            animator.removeBehavior(snapBehaviour)
        }
        
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 0.3
        animator.addBehavior(snapBehaviour)
    }

}

