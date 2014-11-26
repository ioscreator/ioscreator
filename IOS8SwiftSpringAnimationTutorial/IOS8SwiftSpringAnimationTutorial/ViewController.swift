//
//  ViewController.swift
//  IOS8SwiftSpringAnimationTutorial
//
//  Created by Arthur Knopper on 26/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var label: UILabel!
  var labelPositionisLeft = true

  @IBAction func animateLabel(sender: AnyObject) {
    
    UIView.animateWithDuration(0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: nil, animations: {
      if self.labelPositionisLeft {
        self.label.center.x = self.view.bounds.width - 100
      }
      else {
        self.label.center.x = 100
      }
      
      }, completion: nil)
    
    labelPositionisLeft = !labelPositionisLeft
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

