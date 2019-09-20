//
//  ViewController.swift
//  SwiftLint-Example
//
//  Created by Mustafa GUNES on 19.09.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let itemId = 0
    
    let example = 0
    
    // MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // swiftlint:disable empty_count
    func checkIfArrayIsEmpty() -> Bool {
        
        let testArray = [1, 2, 3]
        
        if testArray.count > 0 {
            return false
        }
        
        return true
    }
    // swiftlint:enable empty_count
    
    func d () {
        print("d")
    }
    
    
    func c () {
        print("d")
    }
    
    
    func s () {
        print("d")
    }
    
    func a () {
        print("d")
    }
}

