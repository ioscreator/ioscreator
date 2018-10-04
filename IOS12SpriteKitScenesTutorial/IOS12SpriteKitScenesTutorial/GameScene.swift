//
//  GameScene.swift
//  IOS12SpriteKitScenesTutorial
//
//  Created by Arthur Knopper on 03/10/2018.
//  Copyright © 2018 Arthur Knopper. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor(red: 0.15, green:0.15, blue:0.3, alpha: 1.0)
        let button = SKSpriteNode(imageNamed: "nextButton.png")
        button.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        button.name = "nextButton"
        
        self.addChild(button)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let nodesarray = nodes(at: location)
           
            for node in nodesarray {
                if node.name == "nextButton" {
                let secondScene = SecondScene(fileNamed: "SecondScene")
                let transition = SKTransition.flipVertical(withDuration: 1.0)
                secondScene?.scaleMode = .aspectFill
                scene?.view?.presentScene(secondScene!, transition: transition)
                }
            }
        }
    }
}
