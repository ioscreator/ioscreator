//
//  ViewController.swift
//  IOS11SwipeGestureTutorial
//
//  Created by Arthur Knopper on 27/05/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        
        if (sender.direction == .left) {
            print("Swipe Left")
            let labelPosition = CGPoint(x: self.swipeLabel.frame.origin.x - 50.0, y: self.swipeLabel.frame.origin.y)
            swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: self.swipeLabel.frame.size.width, height: self.swipeLabel.frame.size.height)
        }
        
        if (sender.direction == .right) {
            print("Swipe Right")
            let labelPosition = CGPoint(x: self.swipeLabel.frame.origin.x + 50.0, y: self.swipeLabel.frame.origin.y)
            swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: self.swipeLabel.frame.size.width, height: self.swipeLabel.frame.size.height)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

