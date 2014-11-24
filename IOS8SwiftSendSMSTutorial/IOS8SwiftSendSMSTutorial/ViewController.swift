//
//  ViewController.swift
//  IOS8SwiftSendSMSTutorial
//
//  Created by Arthur Knopper on 23/11/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {
  @IBAction func sendMessage(sender: AnyObject) {
    var messageVC = MFMessageComposeViewController()
    
    messageVC.body = "Enter a message";
    messageVC.recipients = ["Enter tel-nr"]
    messageVC.messageComposeDelegate = self;
    
    self.presentViewController(messageVC, animated: false, completion: nil)
  }
  
  func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
    switch (result.value) {
    case MessageComposeResultCancelled.value:
      println("Message was cancelled")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultFailed.value:
      println("Message failed")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultSent.value:
      println("Message was sent")
     self.dismissViewControllerAnimated(true, completion: nil)
    default:
      break;
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

