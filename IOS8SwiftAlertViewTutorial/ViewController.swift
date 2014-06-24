//
//  ViewController.swift
//  IOS8SwiftAlertViewTutorial
//
//  Created by Arthur Knopper on 23-06-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
	@IBAction func buttonTapped(sender: AnyObject) {
		
		var myAlertView = UIAlertView()
		
		myAlertView.title = "iOScreator"
		myAlertView.message = "Hello, world!"
		myAlertView.addButtonWithTitle("Dismiss")
		
		myAlertView.show()
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

