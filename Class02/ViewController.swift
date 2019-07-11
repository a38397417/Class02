//
//  ViewController.swift
//  Class02
//
//  Created by njcit-02 on 2019/7/6.
//  Copyright © 2019 耿小凡. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        print(responseString)
    }
    

    
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
            let worker : AsyncRequestWorker = AsyncRequestWorker()
            worker.getResponse(from: "https://www.baidu.com", tag: 1)
            worker.reponseDelegate = self

            NotificationCenter.default.addObserver(self, selector: #selector(received(notification:)), name: NSNotification.Name(rawValue: "response.received") , object:nil)
            NotificationCenter.default.addObserver(self, selector: #selector(received(notification:)), name: NSNotification.Name(rawValue: "response.received") , object:nil)
    
    }

    func add(a:Int,b:Int) -> Int {
        return a+b
    }


}
    @objc func received(notification: NSNotification) {
        let hope = notification.userInfo!["response"]
        print(hope)
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print("猜猜看：\(keyboardHeight)")
//        btnHiBottomConstraint.constant =  keyboardHeight
    }
    
}
