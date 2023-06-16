//
//  Ball.swift
//  BR34K0UT
//  
//  Created by tomoq on 2023/06/14
//  
//

import SpriteKit

class Ball {
    let node: SKNode
    var velocity = CGVector(dx: 500.0, dy: 500.0)
    let radius = CGFloat(30.0)
    init(_ scene: SKScene){
        node = SKShapeNode(circleOfRadius: radius)
        node.position = scene.view!.center
        node.physicsBody = SKPhysicsBody(circleOfRadius: radius)
        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.restitution = 1.0
        node.physicsBody?.velocity = velocity
        node.physicsBody?.friction = 0.0
        node.physicsBody?.linearDamping = 0.0
    }
    
    func move(){
//        self.node.position += velocity
    }
}
