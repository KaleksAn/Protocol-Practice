//
//  Cyclist.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation


class Cyclist: Human {
    
    init(name: String, age: Int, phrase: String?) {
        super.init(name: name, age: age)
        self.phrase = phrase
    }
}

extension Cyclist: Ride, Information {
    
    //Ride protocol
    func ride() {
        print("Cyclist \(self.name) ride")
    }
    
    //Information protocol
    var nameOfSport: String? {
        return "Cycling"
    }
    
    var expirience: Double? {
        return 10.2
    }
    
    var achivments: Int? {
        return 67
    }
    
    func getinformation() {
        print("\(self.name) information")
        print("Name of sport \(nameOfSport ?? "Default")")
        print("Expirience \(expirience ?? 0.0)")
        print("Achivments \(achivments ?? 0)")
    }
    
    
}
