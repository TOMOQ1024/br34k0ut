//
//  ContentView.swift
//  BR34K0UT
//  
//  Created by tomoq on 2023/06/11
//  
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene{
        let scene = GameScene(size: UIScreen.main.bounds.size)
        scene.scaleMode = .resizeFill
        return scene
    }
    var body: some View {
        SpriteView(scene: scene).ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
