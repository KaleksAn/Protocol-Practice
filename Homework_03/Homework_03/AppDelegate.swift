//
//  AppDelegate.swift
//  Homework_03
//
//  Created by Aleksandr Kan on 24/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        var fighters: [Beat] = []
        var jumpers: [Jump] = []
        var runners: [Run] = []
        var divers: [Swim] = []
        var superAthletes: [Beat & Jump & Run & Swim] = []
        
        let boxer_1 = Boxer(name: "Jack", age: 22, phrase: nil)
        let boxer_2 = Boxer(name: "Mike", age: 23, phrase: "I'm champion")
        let jumper_1 = Jumper(name: "Rob", age: 18, phrase: "YES!")
        let jumper_2 = Jumper(name: "Bolt", age: 19, phrase: nil)
        let swimer = Swimer(name: "Greg", age: 17, phrase: "No comments")
        let swimer_2 = Swimer(name: "Niko", age: 28, phrase: "I'm the best swimer")
        let cyclist = Cyclist(name: "Rick", age: 19, phrase: nil)
        let cyclist_2 = Cyclist(name: "Hunter", age: 22, phrase: nil)
        let allRounder = AllRounder(name: "Robin", age: 20, phrase: nil)
        let allRounder_2 = AllRounder(name: "Tim", age: 25, phrase: "Triatlon master")
        
        let heroes: [Human] = [boxer_1, jumper_1, swimer, cyclist, allRounder, boxer_2, jumper_2, swimer_2, cyclist_2, allRounder_2]
        
        
        
        
        for character in heroes {
            
            switch character {
                case let boxer as Beat:
                    boxer.hook()
                    boxer.beat()
                    fighters.append(boxer)
                case let jumper as Jump:
                    jumper.jumpMedium()
                    jumper.jumpLow()
                    jumper.jumpHuge()
                    jumpers.append(jumper)
                case let swimer as Swim:
                    swimer.swim()
                    divers.append(swimer)
                case let runer as Run:
                    runer.run()
                    runer.veryFastRun()
                    runners.append(runer)
                case let superMan as Run & Beat & Jump & Swim:
                    superMan.beat()
                    superMan.hook()
                    superMan.run()
                    superMan.swim()
                    superMan.jumpHuge()
                    superMan.jumpLow()
                    superMan.jumpMedium()
                    superAthletes.append(superMan)
                default:
                    break
            }
            
            print(check(for: character.phrase))
            
        }
        
        let word = "TENEw"
        print("Check \(word.isPalindrome)")
        
        
        
        
        return true
    }

    
    //My functions
    func check(for phrase: String?) -> String {
        if let str = phrase {
            return str
        } else {
            return "Default phrase"
        }
    }
    
    
    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    
}

