//
//  ViewController.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "تسجيل الدخول"
        navigationItem.backButtonTitle = ""
        
        phoneNumberTextField.setPadding()
        passwordTextField.setPadding()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = UIColor.black
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContainerVC") as? ContainerVC
        self.navigationController?.pushViewController(vc!, animated: true)

    }
    
    @IBAction func resetPasswordBtnPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ActivateCodeViewController") as? ActivateCodeViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func signupBtnPressed(_ sender: Any) {
    }
}


