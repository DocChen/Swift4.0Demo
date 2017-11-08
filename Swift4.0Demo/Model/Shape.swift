//
//  Shape.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/9/22.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

class Shape: NSObject {

    var numberOfSide = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSide) sides."
    }
}
