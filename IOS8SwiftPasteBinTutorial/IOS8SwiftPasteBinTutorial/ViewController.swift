//
//  ViewController.swift
//  IOS8SwiftPasteBinTutorial
//
//  Created by Arthur Knopper on 23/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  @IBOutlet weak var fromTextField: UITextField!
  @IBOutlet weak var toTextField: UITextField!

  @IBAction func copyText(sender: AnyObject) {
    var copyString = fromTextField.text
    var pasteBoard = UIPasteboard.generalPasteboard()
    pasteBoard.string = copyString
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    fromTextField.delegate = self
    toTextField.delegate = self
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return false
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

