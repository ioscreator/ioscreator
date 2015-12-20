//
//  ViewController.swift
//  IOS9TextFieldAlertControllerTutorial
//
//  Created by Arthur Knopper on 15/12/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBAction func login(sender: AnyObject) {
    var usernameTextField: UITextField?
    var passwordTextField: UITextField?
    
    let alertController = UIAlertController(
      title: "Log in",
      message: "Please enter your credentials",
      preferredStyle: UIAlertControllerStyle.Alert)
    
    let loginAction = UIAlertAction(
      title: "Log in", style: UIAlertActionStyle.Default) {
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
    
    alertController.addTextFieldWithConfigurationHandler {
      (txtUsername) -> Void in
        usernameTextField = txtUsername
        usernameTextField!.placeholder = "<Your username here>"
    }
    
    alertController.addTextFieldWithConfigurationHandler {
      (txtPassword) -> Void in
        passwordTextField = txtPassword
        passwordTextField!.secureTextEntry = true
        passwordTextField!.placeholder = "<Your password here>"
    }
    
    
    alertController.addAction(loginAction)
    self.presentViewController(alertController, animated: true, completion: nil)
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

