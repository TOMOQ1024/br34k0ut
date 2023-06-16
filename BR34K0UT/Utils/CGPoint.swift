//
//  CGPoint.swift
//  BR34K0UT
//  
//  Created by tomoq on 2023/06/14
//  
//

import SpriteKit

func += ( point: inout CGPoint, vec: CGVector) {
    point.x += vec.dx
    point.y += vec.dy
}
