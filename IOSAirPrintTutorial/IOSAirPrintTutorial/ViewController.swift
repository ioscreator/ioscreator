//
//  ViewController.swift
//  IOSAirPrintTutorial
//
//  Created by Arthur Knopper on 15/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func printText(_ sender: Any) {
        // 1
        let printController = UIPrintInteractionController.shared
        // 2
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = .general
        printInfo.jobName = "print Job"
        printController.printInfo = printInfo
        
        // 3
        let formatter = UIMarkupTextPrintFormatter(markupText: textView.text)
        formatter.perPageContentInsets = UIEdgeInsets(top: 72, left: 72, bottom: 72, right: 72)
        printController.printFormatter = formatter
        
        // 4
        printController.present(animated: true, completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

