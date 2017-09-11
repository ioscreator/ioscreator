//
//  GameScene.swift
//  IOS11ParticleEmitterTutorial
//
//  Created by Arthur Knopper on 10/09/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.black
        
        let path = Bundle.main.path(forResource: "Rain", ofType: "sks")
        let rainParticle = NSKeyedUnarchiver.unarchiveObject(withFile: path!) as! SKEmitterNode
        
        rainParticle.position = CGPoint(x: self.size.width/2, y: self.size.height)
        rainParticle.name = "rainParticle"
        rainParticle.targetNode = self.scene
        
        self.addChild(rainParticle)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
