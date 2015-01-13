//
//  ViewController.swift
//  IOS8SwiftDynamicTypesTutorial
//
//  Created by Arthur Knopper on 13/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var headlineLabel:UILabel!
  @IBOutlet var subheadlineLabel:UILabel!
  @IBOutlet var bodyLabel:UILabel!
  @IBOutlet var footnoteLabel:UILabel!
  @IBOutlet var caption1Label:UILabel!
  @IBOutlet var caption2Label:UILabel!
  
  func updateFonts() {
    headlineLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
    subheadlineLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
    bodyLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    footnoteLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
    caption1Label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
    caption2Label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleCaption2)
  }
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    updateFonts()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

