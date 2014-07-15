//
//  GameScene.swift
//  SpriteKitSwiftBackgroundTutorial
//
//  Created by Arthur Knopper on 15-07-14.
//  Copyright (c) 2014 Arthur Knopper. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        var bgImage = SKSpriteNode(imageNamed: "wallpaper.png")
		bgImage.position = CGPointMake(self.size.width/2, self.size.height/2)
        
        self.addChild(bgImage)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
