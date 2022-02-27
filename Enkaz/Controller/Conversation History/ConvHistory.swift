//
//  ConvHistory.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class ConvHistory: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var convHistoryTableView: UITableView!
    
//    var convArray : [ConvHistoryData] = [ConvHistoryData]()
     var test  = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.title = "تاريخ المحادثات"
        navigationItem.backButtonTitle = ""
        
        convHistoryTableView.register(UINib(nibName: "CustomConvHistoryCellTableViewCell", bundle: nil) , forCellReuseIdentifier: "cell")
        
         convHistoryTableView.separatorStyle = .none
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomConvHistoryCellTableViewCell
        
                test = ["sssss","ddddd","sssscadcd"]
                cell.senderName.text = test[indexPath.row]
        
//        cell.senderName.text = convArray[indexPath.row].serviceProviderName
//        cell.convDate.text = convArray[indexPath.row].convHistory
//        cell.message.text = convArray[indexPath.row].subject
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
//        return convArray.count
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(87)
    }

}
