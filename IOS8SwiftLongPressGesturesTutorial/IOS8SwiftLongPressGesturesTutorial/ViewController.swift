//
//  ViewController.swift
//  IOS8SwiftLongPressGesturesTutorial
//
//  Created by Arthur Knopper on 02/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBAction func handleGesture(sender: AnyObject) {
    if sender.state == UIGestureRecognizerState.Began
    {
      let alertController = UIAlertController(title: nil, message:
        "Long-Press Gesture Detected", preferredStyle: UIAlertControllerStyle.Alert)
      alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
      
      self.presentViewController(alertController, animated: true, completion: nil)
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

