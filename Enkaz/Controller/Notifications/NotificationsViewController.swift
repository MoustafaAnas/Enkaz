//
//  NotificationsViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate  {
    
    @IBOutlet weak var notificationTableView: UITableView!
    
    var notificationArray : [NotificationsDataModel] = [NotificationsDataModel]()
    //var test  = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.title = "التنبيهات"
        navigationItem.backButtonTitle = ""
        notificationTableView.delegate = self
        notificationTableView.dataSource = self
        notificationTableView.register(UINib(nibName: "customNotificationsTableViewCell", bundle: nil) , forCellReuseIdentifier: "cell")
        
        notificationTableView.separatorStyle = .none
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customNotificationsTableViewCell
        
                //test = ["sssss","ddddd","sssscadcd"]
                //cell.notificationLabel.text = test[indexPath.row]
        
        
       cell.notificationLabel.text = notificationArray[indexPath.row].notification

        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationArray.count
        //return 3
    }
    

}
