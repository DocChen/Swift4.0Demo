//
//  NameShape.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/9/22.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

class NameShape: NSObject {
    var numberOfSides:Int = 0
    var name:String
    init(name:String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
