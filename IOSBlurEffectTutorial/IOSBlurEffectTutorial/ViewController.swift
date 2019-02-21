//
//  ViewController.swift
//  IOSBlurEffectTutorial
//
//  Created by Arthur Knopper on 21/02/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func blurImage(_ sender: Any) {
        // 1
        let darkBlur = UIBlurEffect(style: .dark)
        // 2
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = imageView.bounds
        // 3
        imageView.addSubview(blurView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

