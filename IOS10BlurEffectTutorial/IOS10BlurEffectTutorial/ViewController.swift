//
//  ViewController.swift
//  IOS10BlurEffectTutorial
//
//  Created by Arthur Knopper on 02/06/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func blurImage(_ sender: Any) {
        // 1
        let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.dark)
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

