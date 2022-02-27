//
//  SideMenuVC.swift
//  Enkaz
//
//  Created by NEW on 8/16/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var userType: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var firstTableView: UITableView!

    
    var firstTV  = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileImage.layer.cornerRadius = (self.profileImage.frame.size.height)/2.0
        self.profileImage.layer.masksToBounds = true
        
        firstTableView.delegate = self
        firstTableView.dataSource = self
        firstTableView.register(UINib(nibName: "firstTableViewCell", bundle: nil) , forCellReuseIdentifier: "cell")
        firstTableView.separatorStyle = .none
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! firstTableViewCell
        firstTV = ["الرئيسيه","سجل المحادثات","الرصيد","الابلاغ عن رادار","الابلاغ عن مشاكل الطريق","سجل العمليات"]
        cell.pageName.text = firstTV[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("showMain"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("showConvHistory"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        case 3: NotificationCenter.default.post(name: NSNotification.Name("showRadar"), object: nil)
        case 4: NotificationCenter.default.post(name: NSNotification.Name("showRoadReport"), object: nil)
        case 5: NotificationCenter.default.post(name: NSNotification.Name("showOperationHistory"), object: nil)
        default: break
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    @IBAction func logOut(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func showProfile(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
       NotificationCenter.default.post(name: NSNotification.Name("showProfile"), object: nil)
    }
    
}

