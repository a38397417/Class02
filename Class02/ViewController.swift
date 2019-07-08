//
//  ViewController.swift
//  Class02
//
//  Created by njcit-02 on 2019/7/6.
//  Copyright © 2019 耿小凡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbMSG: UILabel!
    var result : float_t = 10.2
    
    @IBAction func btnTestClick(_ sender: UIButton) {
        print("我干了啥")
        lbMSG.text = "我要铜锣烧"
        lbMSG.textColor = UIColor.red
    }
    override func viewDidLoad() {
        func btnTestClicked(_ sender: Any) {
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //
        
        let 如果我去超市 = true
        //有橘子
         let 如果看到橘子 = true
        
        if 如果我去超市{
            var 卖西瓜的数量 = 1
            
            if 如果看到橘子{
            卖西瓜的数量 = 10
        }
        print("我要卖：\( 卖西瓜的数量 )颗西瓜")

            
        
    
    }

    func add(a:Int,b:Int) -> Int {
        return a+b
    }


}
}
