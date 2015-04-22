//
//  ViewController.swift
//  IOS8SWiftAttributedStringsTutorial
//
//  Created by Arthur Knopper on 03/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var attributedLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let string = "Testing Attributed Strings" as NSString
    var attributedString = NSMutableAttributedString(string: string as String)
    
    
    // 2
    let firstAttributes = [NSForegroundColorAttributeName: UIColor.blueColor(), NSBackgroundColorAttributeName: UIColor.yellowColor(), NSUnderlineStyleAttributeName: 1]
    let secondAttributes = [NSForegroundColorAttributeName: UIColor.redColor(), NSBackgroundColorAttributeName: UIColor.blueColor(), NSStrikethroughStyleAttributeName: 1]
    let thirdAttributes = [NSForegroundColorAttributeName: UIColor.greenColor(), NSBackgroundColorAttributeName: UIColor.blackColor(), NSFontAttributeName: UIFont.systemFontOfSize(40)]
  
    // 3
    attributedString.addAttributes(firstAttributes, range: string.rangeOfString("Testing"))
    attributedString.addAttributes(secondAttributes, range: string.rangeOfString("Attributed"))
    attributedString.addAttributes(thirdAttributes, range: string.rangeOfString("Strings"))
    
    
    // 4
    attributedLabel.attributedText = attributedString
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

