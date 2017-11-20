//
//  ViewController.swift
//  IOS11DynamicTypesTutorial
//
//  Created by Arthur Knopper on 06/11/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var headlineLabel: UILabel!   
    @IBOutlet var subheadlineLabel:UILabel!
    @IBOutlet var bodyLabel:UILabel!
    @IBOutlet var footnoteLabel:UILabel!
    @IBOutlet var caption1Label:UILabel!
    @IBOutlet var caption2Label:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateFonts()
    }

    
    func updateFonts() {
        headlineLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        subheadlineLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        bodyLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        footnoteLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.footnote)
        caption1Label.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        caption2Label.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

