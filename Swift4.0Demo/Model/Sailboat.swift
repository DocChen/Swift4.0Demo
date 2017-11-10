//
//  Sailboat.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/11/8.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

enum WavePosition {
    case WaveTop
    case WaveBottom
}

class Sailboat: NSObject {

    var waveA:CGFloat?
    var wavePeriod:CGFloat?
    var waveOffset:CGFloat?
    var waveC:CGFloat?
    var waveSpeed:CGFloat?
    
    var bgColor:UIColor
    var waveColor:UIColor
    
    var wavePosition:WavePosition
    
    var isAnimation:Bool
    var isShowImage:Bool
    
    var imageSize:CGSize
    
    override init() {
      
        self.bgColor = UIColor.red
        self.waveColor = UIColor.green
        self.waveSpeed = 0.1
        self.waveA = 20
        self.wavePeriod = 1/30.0
        self.waveOffset = 0.0
        self.waveC = self.waveA!*2
        self.wavePosition = .WaveBottom
        self.isAnimation = true
        self.isShowImage = false
        self.imageSize = CGSize(width:20,height:20)
        
    }
    
}
