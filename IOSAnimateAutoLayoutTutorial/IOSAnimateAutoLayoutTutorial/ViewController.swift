//
//  ViewController.swift
//  IOSAnimateAutoLayoutTutorial
//
//  Created by Arthur Knopper on 31/01/2020.
//  Copyright © 2020 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func moveButtonPressed(_ sender: Any)
    {
        // 1
        let newConstraint = NSLayoutConstraint(item: redView as Any, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: view.frame.width)
                  
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
        // Do any additional setup after loading the view.
    }


}

