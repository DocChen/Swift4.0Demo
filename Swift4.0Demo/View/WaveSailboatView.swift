//
//  WaveSailboatView.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/11/8.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

typealias funcSailboatBlock = (Sailboat) -> Void

class WaveSailboatView: UIView {

    var waveDisplaylink:CADisplayLink?
    var waveLayer:CAShapeLayer? = CAShapeLayer.init()
    var sailboat:Sailboat? = Sailboat.init()
    var imageView:UIImageView?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        self.waveSailboat()
    }
    
    func initImageView() -> Void {
        
        if  imageView == nil  {
            
            imageView = UIImageView(image: UIImage(named:"sailboat"))
            
            imageView?.frame = CGRect(x:100,y: 100,width: (self.sailboat?.imageSize.width)!,height: (self.sailboat?.imageSize.height)!)
        }
        self.addSubview(imageView!)
    }
    
    @objc func drawWave() ->Void{
        
        self.sailboat?.waveOffset! += CGFloat((self.sailboat?.waveSpeed!)!)
        self.setNeedsDisplay()
    }
    
    func startWave() -> Void {
        self.initImageView()
        self.waveDisplaylink = CADisplayLink(target: self, selector: #selector(self.drawWave))
        self.waveDisplaylink?.add(to: RunLoop.main, forMode: RunLoopMode.commonModes)
        self.waveDisplaylink?.isPaused = false
        
    }
    
    func stopWave() -> Void {
        
        self.waveDisplaylink?.invalidate()
    }
    
    func waveSailboat() -> Void {
        
        let path: CGMutablePath = CGMutablePath.init()
        //设置波浪起点
        var waveY:CGFloat = self.sailboat!.waveC!
        path.move(to: CGPoint(x: CGFloat(0), y: waveY))
        for x in 0...Int(self.frame.width) {
            
            waveY = (self.sailboat?.waveA!)!*sin((self.sailboat?.wavePeriod!)!*CGFloat(x) + (self.sailboat?.waveOffset!)!) + (self.sailboat?.waveC!)!
            path.addLine(to: CGPoint(x: CGFloat(x), y: waveY))
        }
        
        switch self.sailboat?.wavePosition {
        case .WaveTop?:
            path.addLine(to: CGPoint(x: self.frame.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            break
        case .WaveBottom?:
            path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
            path.addLine(to: CGPoint(x: 0, y: self.frame.height))
            break
        default:
            break
        }
        
        if (self.sailboat?.isShowImage)! {
            waveY = (self.sailboat?.waveA!)!*sin((self.sailboat?.wavePeriod!)!*(self.frame.width/2)+(self.sailboat?.waveOffset!)!) + (self.sailboat?.waveC!)!;
            let  angle =  (self.sailboat?.waveA)!*(self.sailboat?.wavePeriod!)!*cos((self.sailboat?.wavePeriod)!*(self.frame.width/2) + (self.sailboat?.waveOffset)!)
            
            self.imageView?.transform = CGAffineTransform(rotationAngle: angle)
            
        }
        
        self.waveLayer?.fillColor = self.sailboat?.waveColor.cgColor
        path.closeSubpath()
        self.waveLayer?.path = path
    
    }
    
}


