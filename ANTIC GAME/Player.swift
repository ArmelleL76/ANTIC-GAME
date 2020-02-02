//
//  Player.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player{
    var namePlayer : String
    
    var numberTeam : Int
    
    init (namePlayer : String, numberTeam : Int)
    {
    self.namePlayer = namePlayer
    
    self.numberTeam = numberTeam
        
    }
  
    
    func displayTeam ()
    {print("       ---  TEAM : \(numberTeam)  ---   " + "---   PLAYER\(numberTeam) : \(namePlayer)   ---")
   }
    
    func chooseWarrior()->[Warrior]{
    print("Choose a warrior in your team")
        
     return []
    }
    func play(fighter : Warrior)
    {
        var playerChoice : String = ""
        
        repeat{
            print("What is your choice?")
            print("1. fight against and cause damages : choose 1 and do return")
            print("2. Increase arm's strenght : choose 2 and do return")
            print("3. Cure your fighter : choose 3 and do return")
            
            if let choice = readLine(){
 print("You choosed \(choice)")
          playerChoice = choice
                     switch playerChoice
                       {
                     case "1" : fighter.receiveDamage(damage : fighter.arm.damage, index: 1)
                       case "2" : fighter.increasePowerArm()
                     case "3" : fighter.cureOneself(index: 1)
                       default : print("Choose a number in (1,2,3)")
                      
                    }
                }
            
            
        }while playerChoice != "1" && playerChoice != "2" && playerChoice != "3"
       
  
}
}
