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
        Contact(name: "Another Anton", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: UIImage(named: "Avatar"), address: "Volgograd, Alley of Heroes, 4, 88", additionalInfo: "Some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information some very-very long additional information"),
        Contact(name: "Andrew", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com"),
        Contact(name: "Sam", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Lester"),
        Contact(name: "Paul", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "23aa", homePhoneNumber: "381400", email: "habrabro@gmail.com"),
        Contact(name: "Samantha", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil, address: "Volgograd, Alley of Heroes, 4, 88"),
        Contact(name: "Jim", homePhoneNumber: "381400", mobilePhoneNumber: nil, email: "habrabro@gmail.com", image: UIImage(named: "Avatar")),
        Contact(name: "Ioiuoiu", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil, address: "Volgograd, Alley of Heroes, 4, 88"),
        Contact(name: "Lklk", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "дмитрий", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Hjkhljh", homePhoneNumber: nil, mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil),
        Contact(name: "Ykjhlk", homePhoneNumber: "381400", mobilePhoneNumber: "89053993134", email: "habrabro@gmail.com", image: nil, address: "Volgograd, Alley of Heroes, 4, 88"),
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
