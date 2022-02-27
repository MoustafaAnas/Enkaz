//
//  OperationsHistoryViewController.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class OperationsHistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, WhichPopup  {
    
      //var operationArray : [OperationHistory] = [OperationHistory]()
      var test  = [String]()
    
    @IBOutlet weak var operationalHistoryTableView: UITableView!
    @IBOutlet weak var reportReasonTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextField!
    @IBOutlet var popUP1: UIView!
    @IBOutlet var popUP2: UIView!
    @IBOutlet weak var visualEffect: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        visualEffect.alpha = 0.0
        
        self.title = "تاريخ العمليات"
        navigationItem.backButtonTitle = ""
        
        reportReasonTextField.setPadding()
        notesTextField.setPadding()
        
        operationalHistoryTableView.delegate = self
        operationalHistoryTableView.dataSource = self
        operationalHistoryTableView.register(UINib(nibName: "operationsHistoryCellTableViewCell", bundle: nil) , forCellReuseIdentifier: "cell")

        operationalHistoryTableView.separatorStyle = .none
        
     
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! operationsHistoryCellTableViewCell
        
        test = ["User 1","User 2","User 3"]
        cell.servicrProviderName.text = test[indexPath.row]
        cell.delegate = self
        

//        cell.servicrProviderName.text = operationArray[indexPath.row].serviceProvider
//        cell.serviceProviderJob.text = operationArray[indexPath.row].jobTitle
//        cell.startPoint.text = operationArray[indexPath.row].location1
//        cell.endPoint.text = operationArray[indexPath.row].location2
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return operationArray.count
         return 3
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(200)
    }
    
    
    func onClick(index: String) {
        if index == "popUP1" {
            popupIn(popupName: popUP1)
        }
        else if index == "popUP2" {
            popupIn(popupName: popUP2)
        }
    }
    
    
    @IBAction func reportReasonSendBtnPressed(_ sender: Any) {
        popupOut(popupName: popUP1)
    }
    
    @IBAction func ratingSendBtnPressed(_ sender: Any) {
        popupOut(popupName: popUP2)
    }
    
    func popupIn(popupName: UIView) {
        
        self.view.addSubview(popupName)
        popupName.center = self.view.center
        
        popupName.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        popupName.alpha = 0.0
        
        UIView.animate(withDuration: 0.4){
            self.visualEffect.alpha = 0.40
            popupName.alpha = 1
            popupName.transform = CGAffineTransform.identity
        }
    }
    
    
    
    func popupOut(popupName: UIView) {
        UIView.animate(withDuration: 0.3, animations: {
            popupName.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            popupName.alpha = 0
            
            self.visualEffect.alpha = 0
            }) {(success: Bool) in
                
                popupName.removeFromSuperview()
        }
    }
    
    
    
}



