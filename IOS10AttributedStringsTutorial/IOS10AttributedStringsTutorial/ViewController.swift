//
//  ViewController.swift
//  IOS10AttributedStringsTutorial
//
//  Created by Arthur Knopper on 20/03/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attributedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let string = "Testing Attributed Strings"
        let attributedString = NSMutableAttributedString(string: string)
        
        // 2
        let firstAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.blue, NSBackgroundColorAttributeName: UIColor.yellow, NSUnderlineStyleAttributeName: 1]
        let secondAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.red, NSBackgroundColorAttributeName: UIColor.blue, NSStrikethroughStyleAttributeName: 1]
        let thirdAttributes:[String:Any] = [NSForegroundColorAttributeName: UIColor.green, NSBackgroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 40)]
        
        // 3
        attributedString.addAttributes(firstAttributes, range: NSRange(location: 0, length: 8))
        attributedString.addAttributes(secondAttributes, range: NSRange(location: 8, length: 11))
        attributedString.addAttributes(thirdAttributes, range: NSRange(location: 19, length: 7))
        
        // 4
        attributedLabel.attributedText = attributedString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

