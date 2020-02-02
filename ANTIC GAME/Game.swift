//
//  Game.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation


class Game {
    var team1 : [Warrior] = []
    var team2 : [Warrior] = []
    
    
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
    
    
    //fonction display
    func display()-> String{
        var team1 : String = ""
        var team2 : String = ""
        var fighters1 : String = ""
        var fighters2 : String = ""
        let player = Player(numberTeam: 1)
       let fighter = Warrior(arm: Ax())
        team1 += player.displayTeam1(numberTeam: 1)
        team2 += player.displayTeam2(numberTeam: 2)
        fighters1 = fighter.displayFightersTeam1()
        fighters2 = fighter.displayFightersTeam2()
      return team1 + fighters1 + team2 + fighters2
        }
    //On constitue les équipes
    func constructTeam()->[Warrior]{
        
    return []
    }
    
    //Which player'turn is it?
    func whoPlay(round : Int) ->Int{
        if round%2 == 1 { print("Player1 , it's your turn")  }
        else {  print("Player2 it's your turn") }
        return round%2
    }
    
    //the player choose a fighter in each team
    func chooseWarrior (no : Int) -> [String]{
        
    return []
    }
    
    
    
    //a chest appear
    func appearChest(){
        let chest = Chest(randomStrenght : 10)
        print(chest.appear())

    }
    //
    func isAlive(team1 : [Warrior],team2 : [Warrior])-> Bool
    { if team1.count>0 && team2.count>0
    {return true}
    else {return false}
    }
    
    
    func battle()
    {  }
}

