//
//  ViewController.swift
//  IOS8SwiftSliderTutorial
//
//  Created by Arthur Knopper on 15/09/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var slider: UISlider!
  
  @IBOutlet weak var label: UILabel!
  
  
  @IBAction func sliderValueChanged(sender: UISlider) {
    var currentValue = Int(sender.value)
    
    label.text = "\(currentValue)"
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

