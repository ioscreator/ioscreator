//
//  ViewController.swift
//  iOS8SwiftCalculatorTutorial
//
//  Created by savtwo on 10/29/14.
//  Copyright (c) 2014 savtwo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // boolean to check whether typing a num or pressing an operation
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var operation = ""

    @IBOutlet var calculatorDisplay: UILabel!
    
    @IBAction func numberTapped(sender: AnyObject) {
        var number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = calculatorDisplay.text!.toInt()!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = calculatorDisplay.text!.toInt()!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
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

