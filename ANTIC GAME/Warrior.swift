//
//  Warrior.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior{
    var fighterName : String
    var armName : [String] = ["Ax", "Sword","BroadSword"]
    var arm: Weapon
    var damage : [Int] = [15,18,12]
    var life : [Int] = [90,11,80]
    
    
    init ( fighterName : String, arm : Weapon)
    {
        self.fighterName = fighterName
        self.arm = arm
        
        }
   
       
    func receiveDamage(damage : Int, index: Int){
            self.life[index] = self.life[index] - damage
      //If life turns into negative value, life will be equal to zero
    if self.life[index] < 0
            {
                self.life[index] = 0
            }
        }
        
        
        
    func fightAgainst(fighter : Warrior)
        {
            fighter.receiveDamage(damage: self.arm.damage, index : 1)
        }
func increasePowerArm ()
        {self.arm.damage += 8}
    
        
    func description(range : Int, team : Int)-> String {
        var description : [String] = ["","",""]
        
            description[range] =  "Arm : \(self.armName[range])" + "   Life : \(self.life[range])" + "   Damages : \(self.arm.damage)"
       return "\(description[range])"
        }
  
   
    func cureOneself(index: Int){
        self.life[index] +=  10 }
    
    

}
