//
//  ContactTableViewCell.swift
//  Phonebook
//
//  Created by admin on 07/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mobilePhoneNumberLabel: UILabel!
    @IBOutlet weak var homePhoneNumberLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
