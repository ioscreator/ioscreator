//
//  ViewController.swift
//  iOS8SwiftUISwitchTutorial
//
//  Created by Arthur Knopper on 19-07-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
	@IBOutlet var myTextField: UITextField!
	@IBOutlet var mySwitch: UISwitch!
	
	@IBAction func buttonClicked(sender: UIButton) {
		if mySwitch.on {
			myTextField.text = "The Switch is Off"
			println("Switch is on")
			mySwitch.setOn(false, animated:true)
		} else {
			myTextField.text = "The Switch is On"
			mySwitch.setOn(true, animated:true)
		}
	}
	
	func stateChanged(switchState: UISwitch) {
		if switchState.on {
			myTextField.text = "The Switch is On"
		} else {
			myTextField.text = "The Switch is Off"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		mySwitch.addTarget(self, action: Selector("stateChanged:"), forControlEvents: UIControlEvents.ValueChanged)
	}
	
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

