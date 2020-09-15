//
//  ViewController.swift
//  SwiftProgrammers
//
//  Created by Simon Müller on 15.09.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = DataProvider()
        
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 415, height: 50))
        label.text = "Swift Programmierer"
        label.textAlignment = .center
        label.textColor = .magenta
        label.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(label)
        
        for (index, name) in data.memberNames.enumerated() {
            addLabel(name: name, position: index)
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


}

class DataProvider {
    var memberNames : [String]
    
    init() {
        self.memberNames = ["Jonas", "Simon", "Jirawat", "Wanda", "Ben", "Ruedi"]
    }
}

