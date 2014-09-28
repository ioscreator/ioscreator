//
//  ViewController.swift
//  IOS8SwiftPostFacebookTutorial
//
//  Created by Arthur Knopper on 25/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

  @IBAction func postToFacebook(sender: UIButton) {
    if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
      var controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
      
      controller.setInitialText("Testing Posting to Facebook")
      self.presentViewController(controller, animated:true, completion:nil)
    }
    
    else {
      println("no Facebook account found on device")
    }
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

