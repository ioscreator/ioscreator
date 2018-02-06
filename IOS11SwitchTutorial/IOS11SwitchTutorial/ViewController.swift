//
//  ViewController.swift
//  IOS11SwitchTutorial
//
//  Created by Arthur Knopper on 31/01/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stateSwitch: UISwitch!
    
    @IBAction func buttonClicked(_ sender: Any) {
        if stateSwitch.isOn {
            textField.text = "The Switch is Off"
            stateSwitch.setOn(false, animated:true)
        } else {
            textField.text = "The Switch is On"
            stateSwitch.setOn(true, animated:true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)
    }
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            textField.text = "The Switch is On"
        } else {
            textField.text = "The Switch is Off"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

