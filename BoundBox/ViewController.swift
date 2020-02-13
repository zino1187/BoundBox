//
//  ViewController.swift
//  BoundBox
//
//  Created by zino-mac on 2020/02/10.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var objectArray:Array = Array<Ball>()
    var objectManager:ObjectManager!
    
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        objectManager = ObjectManager(objectArray: objectArray)
        
        Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(gameLoop), userInfo: nil, repeats: true)
        
    }

    @IBAction func btnClick(_ sender: Any) {
        create()
    }
    
    func create(){
        let rx = Int.random(in: 1...10)
        let ry = Int.random(in: 1...10)
        
        var ball = Ball(x: 0, y: 0, stepX:rx, stepY:ry, url: "ball2.png", parent: box)
        
        objectManager.addObject(ball: ball)
    }
    
    @objc func gameLoop(){
        objectManager.tick()
        objectManager.render()
    }
    
}

