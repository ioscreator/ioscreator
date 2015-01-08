//
//  ViewController.swift
//  IOS8SwiftAirprintTutorial
//
//  Created by Arthur Knopper on 05/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var textView: UITextView!
  @IBAction func printText(sender: UIButton) {
    // 1
    let printController = UIPrintInteractionController.sharedPrintController()!
    // 2
    let printInfo = UIPrintInfo(dictionary:nil)!
    printInfo.outputType = UIPrintInfoOutputType.General
    printInfo.jobName = "print Job"
    printController.printInfo = printInfo
    
    // 3
    let formatter = UIMarkupTextPrintFormatter(markupText: textView.text)
    formatter.contentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
    printController.printFormatter = formatter
    
    // 4
    printController.presentAnimated(true, completionHandler: nil)
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

