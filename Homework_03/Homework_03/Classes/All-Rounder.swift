//
//  All-Rounder.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation


class AllRounder: Human {
    
    init(name: String, age: Int, phrase: String?) {
        super.init(name: name, age: age)
        self.phrase = phrase
    }
}


extension AllRounder: Jump, Run, Swim, Ride, Information {
    
    //Jump protocol
    func jumpLow() {
        print("All-rounder \(self.name) low jump")
    }
    
    func jumpMedium() {
        print("All-rounder \(self.name) medium jump")
    }
    
    func jumpHuge() {
        print("All-rounder \(self.name) huge jump")
    }
    
    //Run protocol
    func run() {
        print("All-rounder \(self.name) RUN!")
    }
    
    func veryFastRun() {
        print("All-rounder \(self.name) very fast RUN!")
    }
    
    //Swim protocol
    func swim() {
        print("All-rounder \(self.name) swim")
    }
    
    //Ride protocol
    func ride() {
        print("All-rounder \(self.name) ride")
    }
    
    //Information protocol
    var nameOfSport: String? {
        return "All round"
    }
    
    var expirience: Double? {
        return nil
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
