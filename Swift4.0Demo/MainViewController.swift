//
//  MainViewController.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/11/8.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let waveView:WaveSailboatView = WaveSailboatView(frame:CGRect(x:0, y:100, width:UIScreen.main.bounds.width,height: 200))
        waveView.sailboat?.wavePosition = .WaveBottom
        waveView.sailboat?.bgColor = UIColor.clear
        waveView.sailboat?.isAnimation = true
        waveView.sailboat?.isShowImage = true
        waveView.sailboat?.waveSpeed = 0.05
        waveView.sailboat?.waveA = 10
        waveView.sailboat?.waveColor = UIColor(named:"wavecolor")!
        waveView.backgroundColor = waveView.sailboat?.bgColor
        waveView.layer.addSublayer(waveView.waveLayer!)
        self.view.addSubview(waveView)
        waveView.startWave()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
