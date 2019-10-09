//
//  ViewController.swift
//  IOSDynamicTypesTutorial
//
//  Created by Arthur Knopper on 13/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var headlineLabel:UILabel!
    @IBOutlet weak var subheadlineLabel:UILabel!
    @IBOutlet weak var bodyLabel:UILabel!
    @IBOutlet weak var footnoteLabel:UILabel!
    @IBOutlet weak var caption1Label:UILabel!
    @IBOutlet weak var caption2Label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateFonts()
    }
    
    func updateFonts() {
        headlineLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        subheadlineLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        bodyLabel.font = UIFont.preferredFont(forTextStyle: .body)
        footnoteLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
        caption1Label.font = UIFont.preferredFont(forTextStyle: .caption1)
        caption2Label.font = UIFont.preferredFont(forTextStyle: .caption2)
    }


}

