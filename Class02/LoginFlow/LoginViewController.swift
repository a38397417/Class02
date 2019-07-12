//
//  LoginViewController.swift
//  Class02
//
//  Created by 房懷安 on 2019/7/11.
//  Copyright © 2019 房懷安. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var txtAccount: UITextField!
    
    @IBOutlet weak var textPassWord: UITextField!
    
    @IBOutlet weak var txtHi : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
        self.view.endEditing(true)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard
            //条件
            let 输入的文字 = textField.text,
            let rangeOfTextToReplace = Range(range, in: 输入的文字)
            //条件
            else {
                return false
        }
        //条件不成立
        
        //条件成立
        let substringToReplace = 输入的文字[rangeOfTextToReplace]
        let count = 输入的文字.count - substringToReplace.count + string.count
        print("tag:\(textField.tag)")
        if textField.tag == 1{
            return count <= 5
        }
        else if textField.tag == 2 {
            return count <= 7
        }
        return count <= 10
        //条件成立
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
