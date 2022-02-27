//
//  CustomConvHistoryCellTableViewCell.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class CustomConvHistoryCellTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var senderPic: UIImageView!
    @IBOutlet weak var senderName: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var convDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.senderPic.layer.cornerRadius = (self.senderPic.frame.size.height)/2.0
//        self.senderPic.layer.masksToBounds = true
        
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
