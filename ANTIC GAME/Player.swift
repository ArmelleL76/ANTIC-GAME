//
//  Player.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player{
    var playerName : String
    
    var numberTeam = [1,2]
    var team :[Warrior] = [Viking(),Gladiator(),Knight()]
    
    init (playerName : String)
    {
        self.playerName = playerName
        
    }
    
    // Players give their names
    func collectNamePlayer()->[String]{
       var names = [String]()
       print("\nFist Player give your Name and do return\n\n")
        
        if  let name1 = readLine(){print("\nWelcome and good game: \(name1)\n")
            names.append(name1)}
        print("\nSecond Player give your Name and do return\n\n")
        
        if  let name2 = readLine(){print("\nWelcome and good game: \(name2)\n")
            names.append(name2)}
     return names
       
    }
    
    
    func displayTeam()-> String{
        let name : [String] = collectNamePlayer()
        var monText = ""
        monText = "   ---  TEAM : \(numberTeam[0]) : ---" + "  PLAYER\(numberTeam[0]) : \(name[0])   ---\n\n"
        monText += "   ---  TEAM : \(numberTeam[1]) : ---" + "  PLAYER\(numberTeam[1]) : \(name[1])   ---\n\n"
    return monText
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
