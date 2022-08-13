//
//  Jumper.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation


class Jumper: Human {
    
    init(name: String, age: Int, phrase: String?) {
        super.init(name: name, age: age)
        self.phrase = phrase
    }
    
}


extension Jumper: Jump, Information {
    
    //Jump protocol
    func jumpLow() {
        print("Jumper \(self.name) low jump")
    }
    
    func jumpMedium() {
        print("Jumper \(self.name) medium jump")
    }
    
    func jumpHuge() {
        print("Jumper \(self.name) huge jump")
    }
    
    //Information protocol
    var nameOfSport: String? {
        return "Jumping"
    }
    
    var expirience: Double? {
        return 1.5
    }
    
    var achivments: Int? {
        return 25
    }
    
    func getinformation() {
        print("\(self.name) information")
        print("Name of sport \(nameOfSport ?? "Default")")
        print("Expirience \(expirience ?? 0.0)")
        print("Achivments \(achivments ?? 0)")
    }
    
    
}
