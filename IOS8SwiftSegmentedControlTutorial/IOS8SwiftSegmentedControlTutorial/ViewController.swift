//
//  ViewController.swift
//  IOS8SwiftSegmentedControlTutorial
//
//  Created by Arthur Knopper on 15/08/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var segmentedControl: UISegmentedControl!
  @IBOutlet weak var textLabel: UILabel!
  
  @IBAction func indexChanged(sender: UISegmentedControl) {
    switch segmentedControl.selectedSegmentIndex
      {
    case 0:
      textLabel.text = "First Segment Selected";
    case 1:
      textLabel.text = "Second Segment Selected";
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

