//
//  Square.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/9/22.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

class Square: NameShape {

    var sideLength:Double
    
    init(sideLeng:Double, name:String) {
        self.sideLength = sideLeng
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescription()-> String {
        
        return "A square with sides of length \(sideLength)."
    }
    
    
}
