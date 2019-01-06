//
//  GameScene.swift
//  IOSMoveSpritesAccelerometerTutorial
//
//  Created by Arthur Knopper on 18/12/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit
import CoreMotion

class GameScene: SKScene {
    var airplane = SKSpriteNode()
    var motionManager = CMMotionManager()
    var destX: CGFloat  = 0.0
    
    override func didMove(to view: SKView) {
       
        // 1
        airplane = SKSpriteNode(imageNamed: "Airplane")
        airplane.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        self.addChild(airplane)
        
        if motionManager.isAccelerometerAvailable {
            // 2
            motionManager.accelerometerUpdateInterval = 0.01
            motionManager.startAccelerometerUpdates(to: .main) {
                (data, error) in
                guard let data = data, error == nil else {
                    return
                }
                
                // 3
                let currentX = self.airplane.position.x
                self.destX = currentX + CGFloat(data.acceleration.x * 500)
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        let action = SKAction.moveTo(x: destX, duration: 1)
        airplane.run(action)
    }

}
