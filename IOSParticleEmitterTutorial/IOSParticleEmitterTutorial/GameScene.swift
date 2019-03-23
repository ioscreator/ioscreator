//
//  GameScene.swift
//  IOSParticleEmitterTutorial
//
//  Created by Arthur Knopper on 22/03/2019.
//  Copyright © 2019 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.black
        
        if let rainParticles = SKEmitterNode(fileNamed: "Rain.sks") {
            rainParticles.position = CGPoint(x: size.width/2, y: size.height)
            rainParticles.name = "rainParticle"
            rainParticles.targetNode = scene
            
            addChild(rainParticles)
        }
    }
}
