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
			myTextField.text = "The Switch is On"
			println("Switch is on")
			mySwitch.setOn(true, animated:true)
		} else {
			myTextField.text = "The Switch is Off"
			println("Switch is off")
			mySwitch.setOn(false, animated:true)
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

