//
//  DataProvider.swift
//  SwiftProgrammers
//
//  Created by Simon Müller on 07.10.20.
//

import UIKit

struct DataProvider {
    static let sharedInstance = DataProvider()
    var memberNames : [String]
    var memberPersons : [Person]
    
    private init() {
        self.memberNames = ["Jonas", "Simon", "Jirawat", "Wanda", "Ben", "Ruedi"]
        self.memberPersons = [Person(firstName: "Jonas", lastName: "Wolter", plz: 6003),
                              Person(firstName: "Simon", lastName: "Müller", plz: 3250),
                              Person(firstName: "Jirawat", lastName: "Sae-Tang", plz: 2504),
                              Person(firstName: "Wanda", lastName: "Lao", plz: 6003),
                              Person(firstName: "Ruedi", lastName: "Arnold", plz: 0000)]
    }
}
