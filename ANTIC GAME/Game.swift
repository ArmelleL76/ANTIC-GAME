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
    var team1 : [Warrior] = []
    var team2 : [Warrior] = []
    var namePlayer = ["",""]
    var nameFighter1 = ["","",""]
    var nameFighter2 = ["","",""]
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
       
        for index in 0...1{
        
        print("\n\(position[index])Player give your Name and do return\n\n")
        
        if  let name = readLine(){print("\nWelcome and good game: \(name)\n")
            namePlayer[index] = name}
            
        }
        return namePlayer
    }
    
    //Players give names to their warriors
    
    func collectNameFighter1()->[String]
    {
        print("FirstPlayer give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
        for index in 0...2{
        
        if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
            nameFighter1[index] = name}
        }
        
        return nameFighter1
    
        }
        func collectNameFighter2()->[String]
        {
            print("FirstPlayer give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
            for index in 0...2{
            
            if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
                nameFighter2[index] = name}
            }
            
            return nameFighter2
        
            }
    
        
    //fonction display
    func displayWarriorTeam()-> String{
        var display1 : String = ""
        var display2 : String = ""
        var str1 : String = ""
        var str2 : String = ""
        let fighter = Warrior(fighterName: "", arm: Ax())
        let warriorType : [String] = ["Viking","Gladiator","Knight"]
       for index in 0...2 {
            str1 += "\(warriorType[index]) :\(nameFighter1[index]) "+"\(fighter.description(range : index, team : 1))"+"\n\n"
            str2 += "\(warriorType[index]) : \(nameFighter2[index]) "+"\(fighter.description(range : index, team : 2))"+"\n\n"
              }
            display1 += "TEAM1     Player1 : \(namePlayer[0])\n\n"
             display2 += "TEAM2     Player2 : \(namePlayer[1])\n\n"
            display1 += str1
            display2 += str2
        
        return display1 + display2
      
        }
    
    //apparition du coffre
    func appearChest(){
        let chest = Chest(randomStrenght : 10)
        print(chest.appear())

    }
    func isAlive(team1 : [Warrior],team2 : [Warrior])-> Bool
    { if team1.count>0 && team2.count>0
    {return true}
    else {return false}
    }
        
}

