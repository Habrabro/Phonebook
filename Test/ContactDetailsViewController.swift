//
//  ContactDetailsViewController.swift
//  Test
//
//  Created by admin on 07/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    var contact: Contact?
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var homePhoneNumberLabel: UILabel!
    @IBOutlet weak var mobilePhoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = contact?.name
        
        nameLabel.text = contact?.name
        if let mobilePhoneNumber = contact?.mobilePhoneNumber {
            mobilePhoneNumberLabel.text = "📱 " + mobilePhoneNumber
        }
        if let homePhoneNumber = contact?.homePhoneNumber {
            homePhoneNumberLabel.text = "☎️ " + homePhoneNumber
        }
        if let email = contact?.email {
            emailLabel.text = "📧 " + email
        }
        if let image = contact?.image {
            avatarImage.image = image
        }
    }


    convenience init() {
        self.init(contact: nil)
    }
    
    init(contact: Contact?) {
        super.init(nibName: nil, bundle: nil)
        
        self.contact = contact
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
