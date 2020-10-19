//
//  Person.swift
//  SwiftProgrammers
//
//  Created by Simon Müller on 07.10.20.
//

import UIKit

class Person {
    var firstName : String
    var lastName : String
    var plz : Int
    
    init(firstName: String, lastName: String, plz: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.plz = plz
    }
}
