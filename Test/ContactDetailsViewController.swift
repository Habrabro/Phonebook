//
//  ContactDetailsViewController.swift
//  Test
//
//  Created by admin on 07/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ContactDetailsViewController: ViewController {
    var contact: Contact?
    
    @IBOutlet weak var avatarImage: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var homePhoneNumberLabel: UILabel?
    @IBOutlet weak var mobilePhoneNumberLabel: UILabel?
    @IBOutlet weak var emailLabel: UILabel?
    @IBOutlet weak var addressLabel: UILabel?
    @IBOutlet weak var additionalInfoLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = contact?.name
        
        nameLabel?.text = contact?.name
        if let mobilePhoneNumber = contact?.mobilePhoneNumber {
            mobilePhoneNumberLabel?.text = "📱 " + mobilePhoneNumber
            mobilePhoneNumberLabel?.isHidden = false
        } else {
            mobilePhoneNumberLabel?.isHidden = true
        }
        
        if let homePhoneNumber = contact?.homePhoneNumber {
            homePhoneNumberLabel?.text = "☎️ " + homePhoneNumber
            homePhoneNumberLabel?.isHidden = false
        } else {
            homePhoneNumberLabel?.isHidden = true
        }
        
        if let email = contact?.email {
            emailLabel?.text = "📧 " + email
            emailLabel?.isHidden = false
        } else {
            emailLabel?.isHidden = true
        }
        
        if let address = contact?.address {
            addressLabel?.text = "🏠 " + address
            addressLabel?.isHidden = false
        } else {
            addressLabel?.isHidden = true
        }
        
        if let additionalInfo = contact?.additionalInfo {
            additionalInfoLabel?.text = "ℹ " + additionalInfo
            additionalInfoLabel?.isHidden = false
        } else {
            additionalInfoLabel?.isHidden = true
        }
        
        if let image = contact?.image {
            avatarImage?.image = image
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
