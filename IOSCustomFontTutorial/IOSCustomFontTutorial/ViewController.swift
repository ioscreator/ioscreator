//
//  ViewController.swift
//  IOSCustomFontTutorial
//
//  Created by Arthur Knopper on 06/12/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName as String)
            print("Font Names = [\(names)]")
        }
        
        textView.font = UIFont(name: "orangejuice", size: 20.0)
    }


}

