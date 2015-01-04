//
//  MyScene.swift
//  IOS8SwiftSceneKitTutorial
//
//  Created by Arthur Knopper on 02/01/15.
//  Copyright (c) 2015 Arthur Knopper. All rights reserved.
//

import UIKit
import SceneKit

class MyScene: SCNScene {
  
  override init() {
    super.init()
    
    let plane = SCNPlane(width: 1.0, height: 1.0)
    plane.firstMaterial?.diffuse.contents = UIColor.blueColor()
    let planeNode = SCNNode(geometry: plane)
    
    rootNode.addChildNode(planeNode)
    
    let sphere = SCNSphere(radius: 1.0)
    sphere.firstMaterial?.diffuse.contents = UIColor.redColor()
    let sphereNode = SCNNode(geometry: sphere)
    sphereNode.position = SCNVector3(x: 0.0, y: 3.0, z: 0.0)
    
    rootNode.addChildNode(sphereNode)
    
    let box = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.2)
    box.firstMaterial?.diffuse.contents = UIColor.greenColor()
    let boxNode = SCNNode(geometry: box)
    boxNode.position = SCNVector3(x: 0.0, y: -3.0, z: 0.0)
    
    rootNode.addChildNode(boxNode)
    
    let cylinder = SCNCylinder(radius: 1.0, height: 1.0)
    cylinder.firstMaterial?.diffuse.contents = UIColor.yellowColor()
    let cylinderNode = SCNNode(geometry: cylinder)
    cylinderNode.position = SCNVector3(x: -3.0, y: 3.0, z: 0.0)
    
    rootNode.addChildNode(cylinderNode)
    
    let torus = SCNTorus(ringRadius: 1.0, pipeRadius: 0.3)
    torus.firstMaterial?.diffuse.contents = UIColor.whiteColor()
    let torusNode = SCNNode(geometry: torus)
    torusNode.position = SCNVector3(x: -3.0, y: 0.0, z: 0.0)
    
    rootNode.addChildNode(torusNode)
    
    let capsule = SCNCapsule(capRadius: 0.3, height: 1.0)
    capsule.firstMaterial?.diffuse.contents = UIColor.grayColor()
    let capsuleNode = SCNNode(geometry: capsule)
    capsuleNode.position = SCNVector3(x: -3.0, y: -3.0, z: 0.0)
    
    rootNode.addChildNode(capsuleNode)
    
    let cone = SCNCone(topRadius: 1.0, bottomRadius: 2.0, height: 1.0)
    cone.firstMaterial?.diffuse.contents = UIColor.magentaColor()
    let coneNode = SCNNode(geometry: cone)
    coneNode.position = SCNVector3(x: 3.0, y: -2.0, z: 0.0)
    
    rootNode.addChildNode(coneNode)
    
    let tube = SCNTube(innerRadius: 1.0, outerRadius: 2.0, height: 1.0)
    tube.firstMaterial?.diffuse.contents = UIColor.brownColor()
    let tubeNode = SCNNode(geometry: tube)
    tubeNode.position = SCNVector3(x: 3.0, y: 2.0, z: 0.0)
    
    rootNode.addChildNode(tubeNode)
    
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
