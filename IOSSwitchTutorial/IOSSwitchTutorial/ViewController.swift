//
//  ViewController.swift
//  IOSSwitchTutorial
//
//  Created by Arthur Knopper on 16/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonClicked(_ sender: Any) {
        if stateSwitch.isOn {
            textLabel.text = "The Switch is Off"
            stateSwitch.setOn(false, animated:true)
        } else {
            textLabel.text = "The Switch is On"
            stateSwitch.setOn(true, animated:true)
        }
    }
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            textLabel.text = "The Switch is On"
        } else {
            textLabel.text = "The Switch is Off"
        }
    }


}

