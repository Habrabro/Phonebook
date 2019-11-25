//
//  MainViewController.swift
//  Phonebook
//
//  Created by admin on 05/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class ContactsViewController: ViewController {
    let contacts: [Contact]? = FakeDb.getInstance().getTable()?.sorted { $0.name < $1.name }
    var categories: [String: [Contact]] = [:]
    var categoriesKeys: [String] = []
    
    @IBOutlet weak var contactsTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contacts list"
        
        let contactCell = UINib(nibName: "ContactTableViewCell", bundle: nil)
        contactsTableView?.register(contactCell, forCellReuseIdentifier: "contactCell")
        
        contacts?.forEach { contact in
            let firstChar = contact.name.first!.uppercased()
            if let _ = categories[firstChar] {} else {
                categories[firstChar] = []
            }
            categories[firstChar]!.append(contact)
        }
        categoriesKeys = Array(categories.keys.sorted(by: <))
    }
}

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact: Contact =  categories[categoriesKeys[indexPath.section]]![indexPath.row]
        let contactDetailsViewController = ContactDetailsViewController(contact: contact)
        navigationController?.pushViewController(contactDetailsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[categoriesKeys[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        let contact: Contact =  categories[categoriesKeys[indexPath.section]]![indexPath.row]
        
        cell.nameLabel?.text = contact.name
        
        let mobilePhoneNumberLabel : UILabel? = cell.mobilePhoneNumberLabel
        if let mobilePhoneNumber = contact.mobilePhoneNumber {
            mobilePhoneNumberLabel?.text = "📱 " + mobilePhoneNumber
            mobilePhoneNumberLabel?.isHidden = false
        } else {
            mobilePhoneNumberLabel?.isHidden = true
        }
        
        let homePhoneNumberLabel : UILabel? = cell.homePhoneNumberLabel
        if let homePhoneNumber = contact.homePhoneNumber {
            homePhoneNumberLabel?.text = "☎️ " + homePhoneNumber
            homePhoneNumberLabel?.isHidden = false
        } else {
            homePhoneNumberLabel?.isHidden = true
        }
        
        let avatarImage : UIImageView? = cell.avatarImage
        if let image = contact.image {
            avatarImage?.image = image
        } else {
            avatarImage?.image = UIImage(named: "DefaultAvatar")
        }

        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categoriesKeys[section]
    }
}
