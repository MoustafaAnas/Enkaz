//
//  MainVC.swift
//  Enkaz
//
//  Created by NEW on 8/17/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var visualEffect: UIVisualEffectView!
    
    var sideMenuOpen = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "الصفحة الرئيسية"
        navigationItem.backButtonTitle = ""
        toggeleSideMenuBtn()
        
        self.visualEffect.alpha = 0.0

        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("showProfile"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showMain), name: NSNotification.Name("showMain"), object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(showConvHistory), name: NSNotification.Name("showConvHistory"), object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(showRadar), name: NSNotification.Name("showRadar"), object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(showRoadReport), name: NSNotification.Name("showRoadReport"), object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(showOperationHistory), name: NSNotification.Name("showOperationHistory"), object: nil)
        
         
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.backgroundColor = UIColor.black
    }
    
    func toggeleSideMenuBtn() {
        let editBtn = UIBarButtonItem()
        editBtn.image = UIImage(named: "Menu1")
        editBtn.action = #selector(onSideMenuTapped)
        editBtn.target = self
        navigationItem.rightBarButtonItem = editBtn
    }
    
    
    @objc func onSideMenuTapped(){
        print("Toggle Side Menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        if   sideMenuOpen  {
            sideMenuOpen = false
            self.visualEffect.alpha = 0.0
                    }
            
        else {
            sideMenuOpen = true
            self.visualEffect.alpha = 0.70
            
        }
    }

    @objc func showMain(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SideMenuVC") as? SideMenuVC
         vc?.dismiss(animated: true, completion: nil)
        
        self.visualEffect.alpha = 0.0
         sideMenuOpen = false
        
    }
    
    @objc func showConvHistory(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ConvHistory") as? ConvHistory
        self.navigationController?.pushViewController(vc!, animated: true)
        
        self.visualEffect.alpha = 0.0
        sideMenuOpen = false
    }
    @objc func showRadar(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RadarViewController") as? RadarViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        self.visualEffect.alpha = 0.0
        sideMenuOpen = false
    }
    @objc func showRoadReport(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RoadReportViewController") as? RoadReportViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        self.visualEffect.alpha = 0.0
        sideMenuOpen = false
    }
    @objc func showOperationHistory(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OperationsHistoryViewController") as? OperationsHistoryViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
        self.visualEffect.alpha = 0.0
        sideMenuOpen = false
    }

    @objc func showProfile(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "EditProfile") as? EditProfile
        self.navigationController?.pushViewController(vc!, animated: true)
        
        self.visualEffect.alpha = 0.0
        sideMenuOpen = false
    }
    
    
    
    
    
    
    
    
    
}
