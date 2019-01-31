//
//  GameScene.swift
//  IOSSpriteKitBackgroundTutorial
//
//  Created by Arthur Knopper on 31/01/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
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
