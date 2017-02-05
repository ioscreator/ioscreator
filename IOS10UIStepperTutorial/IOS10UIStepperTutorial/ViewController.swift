//
//  ViewController.swift
//  IOS10UIStepperTutorial
//
//  Created by Arthur Knopper on 30/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

