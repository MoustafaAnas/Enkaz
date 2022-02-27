//
//  RadarViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class RadarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "الابلاغ عن رادار"
        navigationItem.backButtonTitle = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    @IBAction func userAnsweBtnPressed(_ sender: Any) {
    }
    
}
