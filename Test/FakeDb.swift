//
//  FakeDb.swift
//  Phonebook
//
//  Created by admin on 06/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//
import UIKit

class FakeDb {
    static var instance: FakeDb?
    
    let table: [Contact]? = [
        Contact(name: "Anton", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: UIImage(named: "Avatar")),
        Contact(name: "Andrew", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Sam", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Lester", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: UIImage(named: "Avatar2")),
        Contact(name: "Paul", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "23aa", homePhoneNumber: "381400", mobilePhoneNumber: nil, email: "habrabro@gmail.com", image: nil),
        Contact(name: "Samantha", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Jim", homePhoneNumber: "381400", mobilePhoneNumber: nil, email: "habrabro@gmail.com", image: UIImage(named: "Avatar")),
        Contact(name: "Ioiuoiu", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Lklk", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "дмитрий", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Hjkhljh", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Ykjhlk", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
    ]
    
    func getTable() -> [Contact]? {
        return table
    }
    
    static func getInstance() -> FakeDb {
        if let _ = instance {} else {
            instance = FakeDb()
        }
        return instance!
    }
}
