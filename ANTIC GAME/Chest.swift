//
//  Chest.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Chest{
    var randomStrenght : Int
    init(randomStrenght : Int)
    {self.randomStrenght = randomStrenght}
    func appear()->Bool{
        let random = Int.random(in: 1..<7)
        if random % 2 == 0 {
            print("A chest has appeared\n")
        return true
        }
        else {return false}
    }
    func armStrenght()->Int{
        let randomInteger = Int.random(in: 8..<21)
        self.randomStrenght = randomInteger
        
        
        return randomInteger
    }
    func exchange()->Int{
        var damage : Int = 10
         damage = self.armStrenght()
    return damage
    
    }
}
