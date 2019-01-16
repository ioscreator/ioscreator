//
//  ViewController.swift
//  IOSTextFieldAlertControllerTutorial
//
//  Created by Arthur Knopper on 16/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showAlertController(_ sender: Any) {
        // 1.
        var usernameTextField: UITextField?
        var passwordTextField: UITextField?
        
        // 2.
        let alertController = UIAlertController(
            title: "Log in",
            message: "Please enter your credentials",
            preferredStyle: .alert)
        
        // 3.
        let loginAction = UIAlertAction(
        title: "Log in", style: .default) {
            (action) -> Void in
            
            if let username = usernameTextField?.text {
                print(" Username = \(username)")
            } else {
                print("No Username entered")
            }
            
            if let password = passwordTextField?.text {
                print("Password = \(password)")
            } else {
                print("No password entered")
            }
        }
        
        // 4.
        alertController.addTextField {
            (txtUsername) -> Void in
            usernameTextField = txtUsername
            usernameTextField!.placeholder = "<Your username here>"
        }
        
        alertController.addTextField {
            (txtPassword) -> Void in
            passwordTextField = txtPassword
            passwordTextField?.isSecureTextEntry = true
            passwordTextField?.placeholder = "<Your password here>"
        }
        
        // 5.
        alertController.addAction(loginAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

