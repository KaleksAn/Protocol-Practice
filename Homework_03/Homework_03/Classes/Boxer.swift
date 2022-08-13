//
//  Boxer.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation

class Boxer: Human {
    
    
    init(name: String, age: Int, phrase: String?) {
        super.init(name: name, age: age)
        self.phrase = phrase
    }
    
    
}


extension Boxer: Beat, Information {
    //Beat protocol
    func beat() {
        print("Boxer \(self.name) beat")
    }
    
    func hook() {
        print("Boxer \(self.name) hook beat")
    }
    
    
    //Information protocol
    var nameOfSport: String? {
        get {
            return "Boxing"
        }
    }
    
    var expirience: Double? {
        get {
            return nil
        }
    }
    
    var achivments: Int? {
        get {
            return nil
        }
    }
    
    func getinformation() {
        print("\(self.name) information")
        print("Name of sport \(nameOfSport ?? "Default")")
        print("Expirience \(expirience ?? 0.0)")
        print("Achivments \(achivments ?? 0)")
    }
  
}
