//
//  ActivateCodeViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class ActivateCodeViewController: UIViewController {

    @IBOutlet weak var activateCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "كود التفعيل"
        navigationItem.backButtonTitle = ""
        activateCodeTextField.setPadding()
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func resendBtnPressed(_ sender: Any) {
    }
    
    @IBAction func confirmBtnPressed(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ResetPasswordViewController") as? ResetPasswordViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

