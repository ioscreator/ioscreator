//
//  ViewController.swift
//  IOS8SwiftEmailTutorial
//
//  Created by Arthur Knopper on 12/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
  @IBOutlet var subject: UITextField!
  @IBOutlet var body: UITextView!
  
  @IBAction func sendMail(sender: AnyObject) {
    var picker = MFMailComposeViewController()
    picker.mailComposeDelegate = self
    picker.setSubject(subject.text)
    picker.setMessageBody(body.text, isHTML: true)
    
    presentViewController(picker, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    subject.delegate = self
    body.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MFMailComposeViewControllerDelegate
  
  // 1
  func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  // UITextFieldDelegate
  
  // 2
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }
  
  // UITextViewDelegate
  
  // 3
  func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
    body.text = textView.text
    
    if text == "\n" {
      textView.resignFirstResponder()
      
      return false
    }
    
    return true
  }
}

