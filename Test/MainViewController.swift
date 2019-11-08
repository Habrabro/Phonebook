//
//  MainViewController.swift
//  Phonebook
//
//  Created by admin on 05/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    let contacts: [Contact]? = FakeDb.getInstance().getTable()?.sorted { $0.name < $1.name }
    var categories: [String: [Contact]] = [:]
    var categoriesKeys: [String] = []
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Contacts list"
        
        let contactCell = UINib(nibName: "ContactTableViewCell", bundle: nil)
        contactsTableView.register(contactCell, forCellReuseIdentifier: "contactCell")
        
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

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
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
        
        cell.nameLabel.text = contact.name
        if let mobilePhoneNumber = contact.mobilePhoneNumber {
            cell.mobilePhoneNumberLabel.text = "📱 " + mobilePhoneNumber
        } else {
            cell.mobilePhoneNumberLabel.text = nil
        }
        if let homePhoneNumber = contact.homePhoneNumber {
            cell.homePhoneNumberLabel.text = "☎️ " + homePhoneNumber
        } else {
            cell.homePhoneNumberLabel.text = nil
        }
        if let image = contact.image {
            cell.avatarImage.image = image
        } else {
            cell.avatarImage.image = UIImage(named: "DefaultAvatar")
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
