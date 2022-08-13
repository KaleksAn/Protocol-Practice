//
//  ExtensionForProtocols.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 25/07/22.
//

import Foundation

//MARK: Default reailization for protocols
extension Beat {
    
    func beat() {
        print("Beat protocol")
        print("Default realization func beat")
    }
    
    func hook() {
        print("Beat protocol")
        print("Default realization func hook")
    }
    
}


extension Jump {
    func jumpLow() {
        print("Jump protocol")
        print("Default realization func jumpLow")
    }
    
    func jumpMedium() {
        print("Jump protocol")
        print("Default realization func jumpMedium")
    }
    
    func jumpHuge() {
        print("Jump protocol")
        print("Default realization func jumpHuge")
    }
    
}

extension Run {
    func run() {
        print("Run protocol")
        print("Default realization func run")
    }
    
    func veryFastRun() {
        print("Run protocol")
        print("Default realization func veryFastRun")
    }
    
}


extension Swim {
    func swim() {
        print("Swim protocol")
        print("Default realization func swim")
    }
}


extension Ride {
    func ride() {
        print("Ride protocol")
        print("Default realization func ride")
    }
}


extension Information {
    var nameOfSport: String? { return "Default value" }
    var expirience: Double? { return 0.0 }
    var achivments: Int? { return 0 }
    
    func getinformation() {
        print("Information protocol")
        print("Default realization func getinformation")
    }
}



//MARK: - Extensions for system structures

extension Int {
    
    func myPow(_ number: Int) -> Int {
        return self * number
    }
    
}

extension String {
    
    var isPalindrome: Bool {
        return self.lowercased() == String(self.reversed()).lowercased()
    }
    
}

