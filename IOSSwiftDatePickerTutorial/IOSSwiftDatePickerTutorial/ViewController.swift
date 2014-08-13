//
//  ViewController.swift
//  IOSSwiftDatePickerTutorial
//
//  Created by Arthur Knopper on 12/08/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var datePicker: UIDatePicker!

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    datePicker.addTarget(self, action: Selector("datePickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
  }
  
  func datePickerChanged(datePicker:UIDatePicker) {
    var dateFormatter = NSDateFormatter()
    
    dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
    dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
  
    var strDate = dateFormatter.stringFromDate(datePicker.date)
    dateLabel.text = strDate
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

