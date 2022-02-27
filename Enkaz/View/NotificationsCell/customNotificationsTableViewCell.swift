//
//  NotificationsTableViewCell.swift
//  Enkaz
//
//  Created by NEW on 7/19/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class customNotificationsTableViewCell: UITableViewCell {

    @IBOutlet weak var cellContainerView: UIView!
    @IBOutlet weak var notificationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
