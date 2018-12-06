//
//  ViewController.swift
//  IOSPasteBinTutorial
//
//  Created by Arthur Knopper on 05/12/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var fromTextField: UITextField!
    @IBOutlet weak var toTextField: UITextField!
    
    @IBAction func copyText(_ sender: Any) {
        let copyString = fromTextField.text
        let pasteBoard = UIPasteboard.general
        pasteBoard.string = copyString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromTextField.delegate = self
        toTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }


}

