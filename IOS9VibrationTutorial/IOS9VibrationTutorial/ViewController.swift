//
//  ViewController.swift
//  IOS9VibrationTutorial
//
//  Created by Arthur Knopper on 25/11/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

  @IBAction func startVibration(sender: AnyObject) {
    for _ in 1...5 {
      AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
      sleep(1)
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

