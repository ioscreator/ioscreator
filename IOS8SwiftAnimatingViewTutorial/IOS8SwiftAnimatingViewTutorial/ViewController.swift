//
//  ViewController.swift
//  IOS8SwiftAnimatingViewTutorial
//
//  Created by Arthur Knopper on 19/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var redView: UIView!

  @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
  
  @IBAction func moveButtonPressed(sender: UIButton) {
    var newConstraint = NSLayoutConstraint(item: redView, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1.0, constant: self.view.frame.width)
    
    UIView.animateWithDuration(1.0, delay: 0.0, options: .CurveEaseOut , animations: {
      self.view.removeConstraint(self.leadingConstraint)
      self.view.addConstraint(newConstraint)
      self.view.layoutIfNeeded()
      }, completion: nil)
    
    leadingConstraint = newConstraint
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

