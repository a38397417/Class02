//
//  AViewController.swift
//  Class02
//
//  Created by njcit-02 on 2019/7/9.
//  Copyright © 2019 耿小凡. All rights reserved.
//

import UIKit

class AViewController: UIViewController {
@IBOutlet weak var lbMSG: UITextField!
    


    @IBOutlet weak var btnHiBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification , object:nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillHideNotification , object:nil)
    }
    @IBAction func btnTestClick(_ sender: UIButton) {
        print("我干了啥")
        lbMSG.text = "我要铜锣烧"
        lbMSG.textColor = UIColor.red
        btnHiBottomConstraint.constant =  400
    }

    
    //Stac
    @objc func keyboardWillShow(_ notification: Notification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            _ = keyboardRectangle.height
        }
    }
    
    //tencent.com
    @objc func keyboardWillShow(notification: NSNotification) {
        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        print("猜猜看：\(keyboardHeight)")
         btnHiBottomConstraint.constant =  keyboardHeight
    }
    
//    @objc func keyboardWillHide(notification: NSNotification) {
//        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
//        print(keyboardHeight)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
