//
//  ObjectManager.swift
//  BoundBox
//
//  Created by zino-mac on 2020/02/10.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ObjectManager: NSObject {
    var objectArray:Array<Ball>
    
    init(objectArray:Array<Ball>){
        self.objectArray = objectArray
    }
    
    func addObject(ball:Ball){
        objectArray.append(ball)
    }
    
    func removeObject(ball:Ball){
        let index = objectArray.firstIndex(of: ball)!
        objectArray.remove(at: index)
    }
    func tick(){
        for obj in objectArray{
            obj.tick()
        }
    }
    func render(){
        for obj in objectArray{
            obj.render()
        }
    }
}
