//
//  GameViewController.swift
//  IOS8SwiftSceneKitTutorial
//
//  Created by Arthur Knopper on 26/12/14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      
      let scnView = self.view as! SCNView
      scnView.scene = MyScene() as MyScene
      scnView.backgroundColor = UIColor.blackColor()
      
      scnView.autoenablesDefaultLighting = true
      scnView.allowsCameraControl = true
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
        } else {
            return Int(UIInterfaceOrientationMask.All.rawValue)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}
