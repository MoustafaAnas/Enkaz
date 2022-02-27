//
//  RoadReportViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class RoadReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         self.title = "الابلاغ عن مشاكل الطريق"
        navigationItem.backButtonTitle = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func userAnswerBtnPressed(_ sender: Any) {
    }
    

}
