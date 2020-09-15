//
//  ViewController.swift
//  SwiftProgrammers
//
//  Created by Simon Müller on 15.09.20.
//

import UIKit

class ViewController: UIViewController {

    let usePersonData = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dataProvider = DataProvider.sharedInstance
        
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 415, height: 50))
        label.text = "Swift Programmierer"
        label.textAlignment = .center
        label.textColor = .magenta
        label.font = .boldSystemFont(ofSize: 35)
        self.view.addSubview(label)
        if usePersonData {
            for (index, person) in dataProvider.memberPersons.enumerated() {
                addLabel(person: person, position: index)
            }
        } else {
            for (index, name) in dataProvider.memberNames.enumerated() {
                addLabel(name: name, position: index)
            }
        }
    }
    
    func addLabel(name: String, position: Int) {
        let yPosition = position * 50 + 400
        let color : UIColor
        switch position {
        case 0, 3, 6:
            color = .magenta
        case 1, 4, 7:
            color = .blue
        case 2, 5, 8:
            color = .purple
        default:
            color = .black
        }
        
        let label = UILabel(frame: CGRect(x: 0, y: yPosition, width: 415, height: 50))
        label.text = name
        label.textAlignment = .center
        label.textColor = color
        label.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(label)
    }
    
    func addLabel(person: Person, position: Int) {
        let yPosition = position * 50 + 400
        
        let labelFirst = UILabel(frame: CGRect(x: 20, y: yPosition, width: 415, height: 50))
        labelFirst.text = person.firstName
        labelFirst.textAlignment = .left
        labelFirst.textColor = .purple
        labelFirst.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(labelFirst)
        
        let labelLast = UILabel(frame: CGRect(x: 150, y: yPosition, width: 415, height: 50))
        labelLast.text = person.lastName
        labelLast.textAlignment = .left
        labelLast.textColor = .purple
        labelLast.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(labelLast)
        
        let labelPlz = UILabel(frame: CGRect(x: 300, y: yPosition, width: 415, height: 50))
        labelPlz.text = String(person.plz)
        labelPlz.textAlignment = .left
        labelPlz.textColor = .purple
        labelPlz.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(labelPlz)
    }


}

class DataProvider {
    static let sharedInstance = DataProvider()
    var memberNames : [String]
    var memberPersons : [Person]
    
    init() {
        self.memberNames = ["Jonas", "Simon", "Jirawat", "Wanda", "Ben", "Ruedi"]
        self.memberPersons = [Person(firstName: "Jonas", lastName: "Wolter", plz: 6003),
                              Person(firstName: "Simon", lastName: "Müller", plz: 3250),
                              Person(firstName: "Jirawat", lastName: "Sae-Tang", plz: 2504),
                              Person(firstName: "Wanda", lastName: "Lao", plz: 6003),
                              Person(firstName: "Ruedi", lastName: "Arnold", plz: 0000)]
    }
}

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
