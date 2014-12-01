//
//  ViewController.swift
//  IOS8SwiftActivityIndicatorStatusBarTutorial
//
//  Created by Arthur Knopper on 01/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func startActivity(sender: AnyObject) {
    UIApplication.sharedApplication().networkActivityIndicatorVisible = true
  }
  
  @IBAction func stopActivity(sender: AnyObject) {
    UIApplication.sharedApplication().networkActivityIndicatorVisible = false
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

