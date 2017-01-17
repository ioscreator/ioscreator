//
//  GameViewController.swift
//  SpriteKitBackgroundTutorial
//
//  Created by Arthur Knopper on 09/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size:CGSize(width: 1080, height: 1920))
        
        let skView = self.view as! SKView
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
