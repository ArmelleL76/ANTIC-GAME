//
//  Game.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation


class Game {
    var str : String = ""
    var number : String = "first"
    init(){}
    func presentation()-> String{
        //Présentation du jeu
        var myText : String = ""
        myText = "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n"
        
        myText += "1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n"
        myText += "2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive\n\n"
        
        myText += "3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nViking1, Gladiator1 and Knight1\n\n******************\n\nTeam2:\n\nViking2, Gladiator2 and Knight2\n\n******************\n\n"
        
        myText += "Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n"
        return myText }
    
    
    // Players give their names
    func collectNamePlayer()-> [String]{
        let position = ["first","second"]
        var namePlayer = ["",""]
        for index in 0...1{
        
        print("\(position)Player give your Name and do return\n")
        
        if  let name = readLine(){print("Welcome and good game: \(name)")
         namePlayer[index] = name
            
        }
        return namePlayer
    }
    
    //Players give names to their warriors
    
    func collectNameFighter(position: String)->[String]
    {  var nameFighter = ["","",""]
        for index in 0...2{
        
        print("\(position)Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name")
        
        if let name = readLine(){ print("Welcome and good luck for fighting : \(name)")
            nameFighter[index] = name}
            }
        return nameFighter
    
        }
        
    
        
    //fonction display
    func displayWarriorTeam()-> String{
        var display1 : String = ""
        var display2 : String = ""
        var str1 : String = ""
        var str2 : String = ""
        let fighter = Warrior(fighterName: "", arm: Ax())
        let warriorType : [String] = ["Viking","Gladiator","Knight"]
        var namePlayer : [String] = self.collectNamePlayer()
        var nameWarrior1 : [String] = self.collectNameFighter(position: "first")
        var nameWarrior2 : [String] = self.collectNameFighter(position: "second")
        
        
        
        for index in 0...2 {
            str1 += "\(warriorType[index]) : \(nameWarrior1[index])   "+"\(fighter.description(range : index, team : 1))"+"\n\n"
            str2 += "\(warriorType[index]) : \(nameWarrior2[index])   "+"\(fighter.description(range : index, team : 2))"+"\n\n"
              }
            display1 += "TEAM1     Player1 : \(namePlayer[0])\n\n"
             display2 += "TEAM2     Player2 : \(namePlayer[1])\n\n"
            display1 += str1
            display2 += str2
        
        return display1 + display2
      
        }
        
        
}
}
