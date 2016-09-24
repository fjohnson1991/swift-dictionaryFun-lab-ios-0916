//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
    "Tim" : "Natural Vanilla",
    "Sophie" : "Mexican Chocolate",
    "Deniz" : "Natural Vanilla",
    "Tom" : "Mexican Chocolate",
    "Jim" : "Natural Vanilla",
    "Susan" : "Cookies 'N' Cream"]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        
        var peopleForFlavor = [""]
        
        for iceCreamFlavor in favoriteFlavorsOfIceCream.values {
            
            if iceCreamFlavor == flavor {
                
                peopleForFlavor.append(iceCreamFlavor)
            }
        }

        return peopleForFlavor
        
        
    }
    
    
    
    
    // 3.
    
    
    func count(forFlavor flavor:String) -> Int {
        
        var countForFlavor: Int = 0
        
        for (name, icecream) in favoriteFlavorsOfIceCream {
            
            if icecream == flavor {
                
                countForFlavor += 1
            }
            
        }
        
        return countForFlavor
        
    }
    
    
    
    
    // 4.
   
    
    func flavor (forPerson person: String) -> String? {
        
        var returnString = ""
        
        for (name, icecream) in favoriteFlavorsOfIceCream {

            if name == person {
                
                returnString = "\(person) likes \(icecream)"
                
                
            } else {
                
                return nil
            }
        }
        
        return returnString
    }
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            
            favoriteFlavorsOfIceCream[person] = flavor
            
            return true
            
        } else {
            
            return false
        }
        
    }
    
    
    
    
    
    // 6.
    
    
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            
            favoriteFlavorsOfIceCream.removeValueForKey(person)
            return true
            
        } else {
            
            return false
        }
    }
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int{
        
        var number: Int = 0
        
        number = favoriteFlavorsOfIceCream.keys.count
        
        return number
        
    }
    
    
    
    
    
    
    // 8.
    
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            
            favoriteFlavorsOfIceCream[person] = flavor
            return true
            
        } else {
            
            return false
        }
        
        
        
    }
    
    
    
    
    
    
    // 9.
    
    
    func attendeesList() -> String {
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sort()
        
        var returnString = ""
        
        for name in allNames {
            
            if (allNames.last != nil) {
                
                let flavor = favoriteFlavorsOfIceCream[name]
                returnString = "\(name) likes \(flavor) ice cream\n"
                
            } else {
                
                let flavor = favoriteFlavorsOfIceCream[name]
                returnString = "\(name) likes \(flavor) ice cream"
            }
            
            
        }
    
    
    return returnString

}
