//
//  ViewController.swift
//  IOS12AnimateViewsTutorial
//
//  Created by Arthur Knopper on 24/09/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func moveButtonPressed(_ sender: Any) {
        // 1
        let newConstraint = NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: self.view.frame.width/2)
            
        // 2
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut , animations: {
                self.view.removeConstraint(self.leadingConstraint)
                self.view.addConstraint(newConstraint)
                self.view.layoutIfNeeded()
        }, completion: nil)
            
        // 3
        leadingConstraint = newConstraint
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

