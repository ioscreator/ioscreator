//
//  ViewController.swift
//  IOSCircularImageTutorial
//
//  Created by Arthur Knopper on 06/05/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var circularImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularImage.layer.masksToBounds = true
        circularImage.layer.cornerRadius = circularImage.bounds.width / 2
        
    }


}

