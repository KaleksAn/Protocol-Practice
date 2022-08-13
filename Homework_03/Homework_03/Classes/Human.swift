//
//  Human.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation

class Human {
    var name: String
    var age: Int
    var phrase: String?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greeting() {
        print("Hi all! I'm \(self.name). My age \(self.age)")
    }
    
}
