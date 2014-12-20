//
//  ViewController.swift
//  IOS8SwiftCustomFontsTutorial
//
//  Created by Arthur Knopper on 17/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var topTextView: UITextView!
  @IBOutlet var bottomTextView: UITextView!

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let fontFamilyNames = UIFont.familyNames()
    for familyName in fontFamilyNames {
      println("Font Family Name = [\(familyName)]")
      let names = UIFont.fontNamesForFamilyName(familyName as String)
      println("Font Names = [\(names)]")
    }
      
    topTextView.font = UIFont(name: "orangejuice", size: 20.0)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

