//
//  GameScene.swift
//  SpriteKitSwiftParticleTutorial
//
//  Created by Arthur Knopper on 26/05/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        
        var path = NSBundle.mainBundle().pathForResource("Rain", ofType: "sks")
        var rainParticle = NSKeyedUnarchiver.unarchiveObjectWithFile(path!) as! SKEmitterNode
        
        rainParticle.position = CGPointMake(self.size.width/2, self.size.height)
        rainParticle.name = "rainParticle"
        rainParticle.targetNode = self.scene
        
        self.addChild(rainParticle)
        
    }
    
   
    /*override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }*/
}
