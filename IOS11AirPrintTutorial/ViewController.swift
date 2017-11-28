//
//  ViewController.swift
//  IOS11AirPrintTutorial
//
//  Created by Arthur Knopper on 14/11/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    
    @IBAction func printText(_ sender: Any) {
        // 1
        let printController = UIPrintInteractionController.shared
        // 2
        let printInfo = UIPrintInfo(dictionary:nil)
        printInfo.outputType = UIPrintInfoOutputType.general
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

