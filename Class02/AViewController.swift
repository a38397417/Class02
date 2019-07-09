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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnTestClick(_ sender: UIButton) {
        print("我干了啥")
        lbMSG.text = "我要铜锣烧"
        lbMSG.textColor = UIColor.red
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
