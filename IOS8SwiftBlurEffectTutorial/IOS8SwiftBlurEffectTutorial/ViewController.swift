//
//  ViewController.swift
//  IOS8SwiftBlurEffectTutorial
//
//  Created by Arthur Knopper on 09/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  @IBAction func blurImage(sender: AnyObject) {
    var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
    var blurView = UIVisualEffectView(effect: darkBlur)
    blurView.frame = imageView.bounds
    imageView.addSubview(blurView)
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

