//
//  ViewController.swift
//  Swift4.0Demo
//
//  Created by chenzetao on 2017/9/21.
//  Copyright © 2017年 czt.tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var mainTableView:UITableView!
    let cellID:String! = "cellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let test = Square(sideLeng:5.2, name:"my test square")
        print(test.area())
        print(test.simpleDescription())
        
      self.initTableView()
        
        
    }

    func initTableView() -> Void {
        if mainTableView == nil {
            mainTableView = UITableView(frame: CGRect(x:0.0,y:0.0,width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height), style: UITableViewStyle.plain)
        }
        mainTableView.dataSource = self;
        mainTableView.delegate = self;
        mainTableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        mainTableView.separatorColor = UIColor.brown
        mainTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellID)
        self.view.addSubview(mainTableView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel!.text = "===========>>>> <<<<============"
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let demoViewController:DemoViewController = DemoViewController()
        self.navigationController?.pushViewController(demoViewController, animated: true)
        
    }
    
}


