//
//  ViewController.swift
//  IOS8SwiftActivityViewControllerTutorial
//
//  Created by Arthur Knopper on 24/08/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var shareButton: UIButton!
  
  
  @IBAction func shareText(sender: UIButton) {
    let activityViewController = UIActivityViewController(
      activityItems: [textField.text as NSString],
      applicationActivities: nil)
    
    presentViewController(activityViewController, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    textField.delegate = self
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

