//
//  ViewController.swift
//  IOS8SwiftNSUserDefaultsTutorial
//
//  Created by Arthur Knopper on 22/02/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var bluetoothSwitch: UISwitch!

    @IBAction func saveSwitchState(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        
        if bluetoothSwitch.on {
            defaults.setBool(true, forKey: "SwitchState")
        } else {
            defaults.setBool(false, forKey: "SwitchState")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var defaults = NSUserDefaults.standardUserDefaults()
        
        if (defaults.objectForKey("SwitchState") != nil) {
            bluetoothSwitch.on = defaults.boolForKey("SwitchState")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

