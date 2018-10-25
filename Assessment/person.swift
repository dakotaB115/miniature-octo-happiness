//
//  person.swift
//  Assessment
//
//  Created by Dakota Brown on 10/25/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

class Person {
    
    var firstName: String?
    var lastName: String?
    var email: String?
    
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}
