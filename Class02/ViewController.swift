//
//  ViewController.swift
//  Class02
//
//  Created by njcit-02 on 2019/7/6.
//  Copyright © 2019 耿小凡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var result : float_t = 10.2
    
    override func viewDidLoad() {
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
