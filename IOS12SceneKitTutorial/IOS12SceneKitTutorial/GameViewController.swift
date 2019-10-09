//
//  GameViewController.swift
//  IOS12SceneKitTutorial
//
//  Created by Arthur Knopper on 26/08/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scnView = self.view as! SCNView
        scnView.scene = MyScene()
        scnView.backgroundColor = UIColor.black
        
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
    }

}
