//
//  GameScene.swift
//  SpriteKitBackgroundTutorial
//
//  Created by Arthur Knopper on 09/01/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background.jpg")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
    }
}
