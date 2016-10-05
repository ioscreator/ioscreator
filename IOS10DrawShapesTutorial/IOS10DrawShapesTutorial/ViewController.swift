//
//  ViewController.swift
//  IOS10DrawShapesTutorial
//
//  Created by Arthur Knopper on 01/10/2016.
//  Copyright © 2016 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let myView = ShapeView(frame: CGRect(x: 25, y: 200, width: 280, height: 250), shape: sender.tag)
        myView.backgroundColor = UIColor.cyan
        view.addSubview(myView)
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

