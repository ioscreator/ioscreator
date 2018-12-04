//
//  ViewController.swift
//  IOSScreenEdgePanGestureTutorial
//
//  Created by Arthur Knopper on 03/12/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var screenEdgeRecognizer: UIScreenEdgePanGestureRecognizer!
    var currentRadius:CGFloat = 0.0

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenEdgeRecognizer = UIScreenEdgePanGestureRecognizer(target: self,
                                                                action: #selector(rotateBall))
        screenEdgeRecognizer.edges = .left
        view.addGestureRecognizer(screenEdgeRecognizer)
    }
    
    @objc func rotateBall(sender: UIScreenEdgePanGestureRecognizer) {
        // 1
        if sender.state == .ended {
            // 2
            if currentRadius==360.0 {
                currentRadius=0.0
            }
            
            UIView.animate(withDuration: 1.0, animations: {
                self.currentRadius += 90.0
                self.imageView.transform = CGAffineTransform(rotationAngle: self.currentRadius * .pi / 180.0)
            })
        }
    }
        
}

