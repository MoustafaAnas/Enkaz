//
//  ResetPasswordViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var confirmNewPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "نسيت كلمة المرور"
        newPasswordTextField.setPadding()
        confirmNewPasswordTextField.setPadding()
        navigationItem.backButtonTitle = ""
    
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func confirmBtnPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ContainerVC") as? ContainerVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

}

