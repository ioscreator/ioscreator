//
//  ViewController.swift
//  IOS10DatePickerTutorial
//
//  Created by Arthur Knopper on 22/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_ sender: Any) {
            let dateFormatter = DateFormatter()
            
            dateFormatter.dateStyle = DateFormatter.Style.short
            dateFormatter.timeStyle = DateFormatter.Style.short
            
            let strDate = dateFormatter.string(from: datePicker.date)
            dateLabel.text = strDate
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

