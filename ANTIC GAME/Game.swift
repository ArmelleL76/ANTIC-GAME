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
    init(team1 : [Warrior], team2 : [Warrior]){
        self.team1 = team1
        self.team2 = team2
        
    }
    func presentation()-> String{
        //Présentation du jeu
        var myText : String = ""
        myText = "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n"
        
        myText += "1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n"
        myText += "2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive\n\n"
        
        myText += "3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nViking1, Gladiator1 and Knight1\n\n******************\n\nTeam2:\n\nViking2, Gladiator2 and Knight2\n\n******************\n\n"
        
        myText += "Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n"
        return myText }
    
    
    //fonction displayTEAMS()
       
    func displayWarriorTeams(){
        let player = Player(playerName : "")
     print(player.displayTeam())



        let fighter = Warrior(fighterName: "", arm: Ax())
     let fighterTeam1 = fighter.collectNameFighterTeam1()
     let fighterTeam2 = fighter.collectNameFighterTeam2()

         print(" Team1 :  ")
        
         for index in 0...2
         {
          print("Name : \(fighterTeam1[index])   " + fighter.description(range: index, team: 1))}

     print(" Team2 :  ")

      for index in 0...2
      {
       print("Name : \(fighterTeam2[index])   " + fighter.description(range: index, team: 2))}

           }

    func decreaseTeam(team : [Warrior]){
        var count = team.count
        if count > 0 {
            count -= 1}
        else { count = 0}
    }
   
    func isAlive(team1 : [Warrior],team2 : [Warrior])-> Bool
    { if team1.count>0 && team2.count>0
    {return true}
    else {return false}
    }
        
}

