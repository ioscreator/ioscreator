//
//  ViewController.swift
//  IOSVibrationTutorial
//
//  Created by Arthur Knopper on 14/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBAction func startVibration(_ sender: Any) {
        for _ in 1...5 {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            sleep(1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    


}

