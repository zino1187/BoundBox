//  Ball.swift
//  BoundBox
//
//  Created by zino-mac on 2020/02/10.
//  Copyright © 2020 zino-mac. All rights reserved.

import UIKit

class Ball: NSObject {
    var x:Int
    var y:Int
    var imgView:UIImageView!
    var parent:UIView!
    var stepX:Int
    var stepY:Int
    
    init(x:Int, y:Int, stepX:Int, stepY:Int, url:String, parent:UIView) {
        self.x = x
        self.y = y
        self.stepX = stepX
        self.stepY = stepY
        self.imgView = UIImageView(image: UIImage(named: url))
        self.parent = parent
        self.imgView.frame = CGRect(x: self.x, y: self.y, width: 30, height: 30)
        self.parent.addSubview(self.imgView)
    }
    
    func tick(){
        self.x += stepX
        self.y += stepY
        
        if self.x > 400 || self.x < 0{
            self.stepX = self.stepX * -1
        }
        if self.y > 700 || self.y < 0{
            self.stepY = self.stepY * -1
        }
    }
    
    func render(){
        self.imgView.frame.origin = CGPoint(x: self.x, y: self.y)
    }
    
}
