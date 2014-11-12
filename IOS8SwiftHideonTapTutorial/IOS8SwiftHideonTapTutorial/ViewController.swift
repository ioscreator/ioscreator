//
//  ViewController.swift
//  IOS8SwiftHideonTapTutorial
//
//  Created by Arthur Knopper on 12/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBAction func showFullSize(sender: AnyObject) {
    var fullImageView:UIImageView = UIImageView(frame: self.view.frame)
    var image = UIImage(named: "sunset.jpg");
    fullImageView.image = image;
    
    view.addSubview(fullImageView)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

