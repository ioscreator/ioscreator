//
//  ViewController.swift
//  IOSUserDefaultsTutorial
//
//  Created by Arthur Knopper on 22/10/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bluetoothSwitch: UISwitch!
    
    @IBAction func saveSwitchState(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        if bluetoothSwitch.isOn {
            defaults.set(true, forKey: "SwitchState")
        } else {
            defaults.set(false, forKey: "SwitchState")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        if (defaults.object(forKey: "SwitchState") != nil) {
            bluetoothSwitch.isOn = defaults.bool(forKey: "SwitchState") 
        }
    }
    
   
    
   


}

