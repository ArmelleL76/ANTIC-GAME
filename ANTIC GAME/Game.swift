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
func collectNamePlayer(number : String)-> String{
    print("\(number)Player give your Name and do return")
    let player = Player(namePlayer : "", numberTeam: 0)
  if  let name = readLine(){print("Welcome and good game: \(name)")
        player.namePlayer = name
  
    }
    return player.namePlayer
}

//Players give names to their warriors

func collectNameFighter(number: String)->String
{ print("\(number)Player give a name to your fighters viking, gladiator, knight, in this order and do return after each name")
 let fighter = Warrior(fighterName: "", arm: Ax())
    if let name = readLine(){ print("Welcome and good luck for fighting : \(name)")
        fighter.fighterName = name}
    return fighter.fighterName
} // } terminant la fonction

}  // } de la classe
//fonction displayWarriorResults
func displayWarriorResultsTeam1()-> String{
    var display : String = ""
    let fighter = Warrior(fighterName: "", arm: Ax())
    var fighterTeam1 : [String] = ["","",""]
    for index in 0...2 {
    fighterTeam1[index] += name.collectNameFighter(number: "first")
    }
    
    
    let warriorType1 : [String] = ["Viking", "Gladiator", "Knight"]
    for index in 0...2 {
        display += warriorType1[index] + fighterTeam1[index] + fighter.description(range: index, team: 1)  }
    return display
}
func displayWarriorResultsTeam2()-> String{
    var display : String = ""
    let fighter = Warrior(fighterName: "", arm: Ax())
    var fighterTeam2 : [String] = ["","",""]
    for index in 0...2 {
    fighterTeam2[index] += name.collectNameFighter(number: "first")
    }
    
    
    let warriorType2 : [String] = ["Viking", "Gladiator", "Knight"]
    for index in 0...2 {
        display += warriorType2[index] + fighterTeam2[index] + fighter.description(range: index, team: 2) }
    return display
}
