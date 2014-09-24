//
//  ViewController.swift
//  IOS8SwiftShadowButtonTutorial
//
//  Created by Arthur Knopper on 23/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var button: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    button.layer.shadowColor = UIColor.blackColor().CGColor
    button.layer.shadowOffset = CGSizeMake(5, 5)
    button.layer.shadowRadius = 5
    button.layer.shadowOpacity = 1.0   
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

