//
//  Swimer.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation


class Swimer: Human {
    
    init(name: String, age: Int, phrase: String?) {
        super.init(name: name, age: age)
        self.phrase = phrase
    }
    
}


extension Swimer: Swim, Information {
    
    //Protocol Swim
    func swim() {
        print("Swimer \(self.name) swim!")
    }
    
    
    //Information protocol
    var nameOfSport: String? {
        return "Swim"
    }
    
    var expirience: Double? {
        return 0.5
    }
    
    var achivments: Int? {
        return nil
    }
    
    func getinformation() {
        print("\(self.name) information")
        print("Name of sport \(nameOfSport ?? "Default")")
        print("Expirience \(expirience ?? 0.0)")
        print("Achivments \(achivments ?? 0)")
    }
    
    
    
    
}
