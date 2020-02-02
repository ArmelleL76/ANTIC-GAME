//
//  Warrior.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior{
    var fighterNameTeam1 : [String] = ["","",""]
    var fighterNameTeam2 : [String] = ["","",""]
    var armName : [String] = ["Ax", "Sword","BroadSword"]
    var arm: Weapon
    var damage : [Int] = [15,18,12]
    var life : [Int] = [90,100,80]
    
    
    init (arm : Weapon)
    {
        
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
    
        
    
  
   
    func cureOneself(index: Int){
        self.life[index] +=  10 }
    
    func collectNameFighter1()->[String]
       {
           print("FirstPlayer give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
           for index in 0...2{
           
           if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
               fighterNameTeam1[index] = name}
           }
           
           return fighterNameTeam1
       
           }
    func collectNameFighter2()->[String]
    {
        print("FirstPlayer give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
        for index in 0...2{
        
        if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
            fighterNameTeam2[index] = name}
        }
        
        return fighterNameTeam2
    
        }
    func displayFightersTeam1()->String{
          let warriorType : [String] = ["Viking","Gladiator","Knight"]
        var string1 = ""
        for index in 0...2
{ string1 += "\(warriorType[index]) :" +   "\(fighterNameTeam1[index])\n "
   + "---Arm : \(armName[index])"
    + "---Dameges : \(damage[index])" + "---Life : \(life[index])\n"
     }
        return string1
    }
    func displayFightersTeam2()->String{
              let warriorType : [String] = ["Viking","Gladiator","Knight"]
         var string2 = ""
            for index in 0...2
            { string2 += "\(warriorType[index]) :   \(fighterNameTeam2[index]) " + "---Arm : \(armName[index])" + "---Dameges : \(damage[index])" + "---Life : \(life[index])"
             }
        return string2
        }
    }

