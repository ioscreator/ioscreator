//
//  ViewController.swift
//  IOS8SwiftRotatingImageTutorial
//
//  Created by Arthur Knopper on 29/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  @IBAction func rotateImage(sender: UIButton) {
    UIView.animateWithDuration(2.0, animations: {
      self.imageView.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)
    })
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

