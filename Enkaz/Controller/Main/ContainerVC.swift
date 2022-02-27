//
//  MainVCViewController.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    @IBOutlet weak var sideMenuConstrsint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
       
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.isHidden = true
    }
 
   @objc func toggleSideMenu(){
        if sideMenuOpen{
            sideMenuOpen = false
            sideMenuConstrsint.constant = -300
        }
        else {
            sideMenuOpen = true
            sideMenuConstrsint.constant = 0
        }
    UIView.animate(withDuration: 0.3) {
        self.view.layoutIfNeeded()
    }
    }

}
