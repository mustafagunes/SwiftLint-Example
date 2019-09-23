//
//  ViewController.swift
//  SwiftLint-Example
//
//  Created by Mustafa GUNES on 19.09.2019.
//  Copyright © 2019 Mustafa GUNES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let aaaaabbbbbcccccccllllllssss = "aaaa"
    
    let apiUrl = "http://github.com"
    
    var id = 1
    
    let example = 0
    
    let Deneme = "API_KEY"
    
    // MARK: - aa
    
    // TODO: the thing todo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if apiUrl == Deneme {
            if apiUrl == Deneme {
                if apiUrl == Deneme {
                    if apiUrl == Deneme {
                        
                    }
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        for name in 0..<4  {
            for name in 0..<4  {
                for name in 0..<4  {
                }
            }
        }
    }
    
    func parameterMethod(param1: String, param2: Int, param3: String) {
        print(param1)
    }
    
    func parameterMethod2(param1: String, param2: Int, param3: String, param4: String) {
        print(param1)
    }
    
    // swiftlint:disable empty_count
    func checkIfArrayIsEmpty() -> Bool {
        
        let testArray = [1, 2, 3]
        
        if testArray.count > 0 {
            return false
        }
        
        return true
    }
    
    // ex comment
    func exMethod() {
        print(1)
        print(1)
        print(1)
        print(1)
        print(1)
        print(1)
        print(1)
        print(1)
        print(1)
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

