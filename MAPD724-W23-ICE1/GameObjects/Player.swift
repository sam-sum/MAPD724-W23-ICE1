//
//  Player.swift
//  MAPD724-W23-ICE1
//
//  Created by Samuel Sum on 2023-01-17.
//
import GameplayKit
import SpriteKit

class Player : GameObject, GameProtocol
{
    // initializer
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    func Start() {
        zPosition = 2
        Reset()
    }
    
    func Update() {
        CheckBounds()
    }
    
    func CheckBounds() {
        // constrain the player on the left boundary
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        // constrain the player on the right boundary
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    func Reset() {
        position.y = -495
    }
    
    func TouchMove(newPos: CGPoint){
        position = newPos
    }

}
