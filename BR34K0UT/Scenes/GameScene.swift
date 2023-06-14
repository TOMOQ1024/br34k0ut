//
//  GameScene.swift
//  BR34K0UT
//
//  Created by 東光邦 on 2023/06/12.
//

import SpriteKit

class GameScene: SKScene {
    var paddle: Paddle?
    var isTouched = false
    
    override func didMove(to view: SKView) {
        self.paddle = Paddle(self)
        if let paddleNode = paddle?.node {
            self.addChild(paddleNode)
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        if(isTouched){
            self.paddle?.move()
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
