//
//  Category.swift
//  Phonebook
//
//  Created by admin on 05/11/2019.
//  Copyright © 2019 admin. All rights reserved.
//

class Category {
    var title: String;
    var contacts: [Contact] = []
    
    init (title: String) {
        self.title = title
    }
}
