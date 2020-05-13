//
//  ViewController.swift
//  Test
//
//  Created by Apple on 13/05/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var usernameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didSelectLoginBtn(_ sender: Any) {
        if usernameTF.text == "sushma" && passwordTF.text == "12345" {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let hotelVC = sb.instantiateViewController(withIdentifier: "HotelsViewController") as? HotelsViewController
            self.navigationController?.pushViewController(hotelVC!, animated: true)
        }else {
            // wrong username & password
        }
    }
    
}

