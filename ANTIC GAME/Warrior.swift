//
//  Warrior.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior{
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
    var armName : [String] = ["Ax", "Sword","BroadSword"]
    var arm: Weapon
    var damage : [Int] = [15,18,12]
    var life : [Int] = [90,100,80]
    
    
    init (arm : Weapon)
    {
      
        self.arm = arm
        
        }
   func collectNameFighterTeam1()->[String]
   { self.nameFighter1 = []
       print("\nFirst Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
       for _ in 0...2{
       
       if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
        nameFighter1.append(name)}
       }
       
       return nameFighter1
   
       }
    
    func collectNameFighterTeam2()->[String]
    {  self.nameFighter2 = []
          print("\nSecond Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
          for _ in 0...2{
          
          if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
            nameFighter2.append(name)}
          }
          
          return nameFighter2
      
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
        
        description[range] = "Arm : \(self.armName[range])" + "   Life : \(self.life[range])" + "   Damages : \(self.arm.damage)\n"
       return "\(description[range])"
        }
  
   
    func cureOneself(index: Int){
        self.life[index] +=  10 }
    
    

}
