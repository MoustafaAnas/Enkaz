//
//  operationsHistoryCellTableViewCell.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit


protocol WhichPopup {
    func onClick(index: String)
}

class operationsHistoryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var servicrProviderPic: UIImageView!
    @IBOutlet weak var servicrProviderName: UILabel!
    @IBOutlet weak var serviceProviderJob: UILabel!
    @IBOutlet weak var endPoint: UILabel!
    @IBOutlet weak var startPoint: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var reportBtn: UIButton!
    
    var delegate: WhichPopup?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.servicrProviderPic.layer.cornerRadius = (self.servicrProviderPic.frame.size.height)/2.0
        self.servicrProviderPic.layer.masksToBounds = true
        
    }

   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  
    
    @IBAction func report(_ sender: Any) {
        delegate?.onClick(index: "popUP1")
   }
    
    @IBAction func rateBtnPressed(_ sender: Any) {
        delegate?.onClick(index: "popUP2")
    }
    
    
}
