//
//  ViewController.swift
//  AppBanHang
//
//  Created by Nguyen Thanh Nam on 9/18/20.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUsername.delegate=self
        txtPassword.delegate=self

    }

    @IBAction func Login(_ sender: Any) {
        if txtUsername.text!.isEmpty || txtPassword.text!.isEmpty {
        print("dang nhap that bai")
        }else{
                self.performSegue(withIdentifier: "goToViewController2", sender: self)
        }
    }
    
}

