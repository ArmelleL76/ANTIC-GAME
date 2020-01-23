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
    var armName : String
    var arm : Weapon
    var life : Int
    
    
    init ( fighterName : String, armName : String, arm : Weapon, life : Int)
    {
        self.fighterName = fighterName
        self.armName = armName
        self.arm = arm
        self.life = life
        }
   
       
func receiveDamage(damage : Int){
            self.life = self.life - damage
      //If life turns into negative value, life will be equal to zero
    if self.life < 0
            {
                self.life = 0
            }
        }
        
        
        
func fightAgainst(fighter : Warrior)
        {
            fighter.receiveDamage(damage : self.arm.damage)
        }
func increasePowerArm ()
        {self.arm.damage += 8}
    
        
func description() ->String{
           return "Arm : \(self.armName)" + "   Life : \(self.life)" + "   Damages : \(self.arm.damage)"
        }
func cureOneself(){
        self.life +=  10 }
    
    
}

