//
//  ViewController.swift
//  IOS9DrawShapesTutorial
//
//  Created by Arthur Knopper on 24/08/15.
//  Copyright © 2015 Arthur Knopper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonPressed(sender: UIButton) {
        let myView = ShapeView(frame: CGRectMake(50, 200, 280, 250), shape: sender.tag)
        myView.backgroundColor = UIColor.cyanColor()
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

