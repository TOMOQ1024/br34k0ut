//
//  GameScene.swift
//  BR34K0UT
//
//  Created by 東光邦 on 2023/06/12.
//

import SpriteKit

class GameScene: SKScene {
    var paddle: Paddle?
    var balls: [Ball] = []
    var isTouched = false
    
    override func didMove(to view: SKView) {
        self.paddle = Paddle(self)
        self.balls.append(Ball(self))
        if let paddleNode = paddle?.node {
            self.addChild(paddleNode)
        }
        self.addChild(self.balls.first!.node)
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        self.physicsBody?.restitution = 1.0
        self.physicsBody?.friction = 0.0
    }
    
    override func update(_ currentTime: TimeInterval) {
        if(isTouched){
            self.paddle?.move()
        }
        for ball in self.balls {
            ball.move()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        paddle?.dest = touches.first!.location(in: self.view).x
        isTouched = true
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        paddle?.dest = touches.first!.location(in: self.view).x
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(touches.count == 1){
            isTouched = false
        }
    }
}
