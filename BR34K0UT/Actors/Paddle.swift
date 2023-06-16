//
//  Paddle.swift
//  BR34K0UT
//
//  Created by 東光邦 on 2023/06/12.
//

import SpriteKit

class Paddle {
    let node: SKNode
    let midX: CGFloat
    var dest: CGFloat
    let width = CGFloat(100)
    let height = CGFloat(20)
    let moveSpeed = CGFloat(2)
    init(_ scene: SKScene){
        midX = scene.frame.midX
        let rect = CGRect(
            x: midX - width/2, y:100,
            width: width, height: height
        )
        node = SKShapeNode(rect: rect)
        dest = CGFloat(0)
        node.physicsBody = SKPhysicsBody(polygonFrom: CGPath(rect: rect, transform: nil))
//        node.physicsBody?.affectedByGravity = false
        node.physicsBody?.isDynamic = false
    }
    func move(){
        let vec = self.dest - self.node.position.x - self.midX
        if abs(vec) < 1 {return}
        
        let deltX = vec/abs(vec) * moveSpeed
        self.node.position.x += deltX
    }
}
