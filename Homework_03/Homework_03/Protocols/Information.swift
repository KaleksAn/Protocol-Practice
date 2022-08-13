//
//  Information.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import Foundation


protocol Information {
    
    var nameOfSport: String? { get }
    var expirience: Double? { get }
    var achivments: Int? { get }
    
    func getinformation()
}
