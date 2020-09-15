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
        
        let data = DataProvider(names: ["Jonas", "Simon", "Velo", "Jonas", "Simon", "Velo"])
        
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: 415, height: 50))
        label.text = "Swift Programmierer"
        label.textAlignment = .center
        label.textColor = .magenta
        label.font = .boldSystemFont(ofSize: 25)
        self.view.addSubview(label)
        
        let numberOfNames = data.memberNames.capacity
        let grid = 400 / numberOfNames
        var startY = 400
        for name in data.memberNames {
            let label = UILabel(frame: CGRect(x: 0, y: startY, width: 415, height: 50))
            label.text = name
            label.textAlignment = .center
            label.textColor = .magenta
            label.font = .boldSystemFont(ofSize: 25)
            startY += grid
            self.view.addSubview(label)
        }
    }


}

class DataProvider {
    var memberNames : [String]
    
    init(names : [String]) {
        self.memberNames = names
    }
}

