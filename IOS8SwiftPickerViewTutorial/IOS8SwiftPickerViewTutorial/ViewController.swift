//
//  ViewController.swift
//  IOS8SwiftPickerViewTutorial
//
//  Created by Arthur Knopper on 13/10/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
  var colors = ["Red","Yellow","Green","Blue"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // pragma MARK: UIPickerViewDataSource Delegate
  
  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
  }
  
 /* func pickerView(pickerView: UIPickerView, numberOfRowsInComponent: component) {
    return colors.count
  }*/
  
  func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return colors.count
  }
  
  // pragma MARK: UIPickerViewDelegate
  
  func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    return colors[row]
  }
}

