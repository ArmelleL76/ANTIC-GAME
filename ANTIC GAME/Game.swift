//
//  Game.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 24/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation


class Game {
    var player1 : Player
    var player2 : Player
    var fighterTeam1 = [String]()
    var fighterTeam2 = [String]()
   var team1 = [Warrior]()
   var team2 = [Warrior]()
    init(player1 : Player, player2 : Player)
    {
        self.player1 = player1
        self.player2 = player2
       }
    func start() {
        
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
      fighterTeam1 = fighter.collectNameFighterTeam1()
      fighterTeam2 = fighter.collectNameFighterTeam2()

         print(" Team1 :  ")
        
         for index in 0...2
         {
          print("Name : \(fighterTeam1[index])   " + fighter.description(range: index, team: 1))}

     print(" Team2 :  ")

      for index in 0...2
      {
       print("Name : \(fighterTeam2[index])   " + fighter.description(range: index, team: 2))}

           }
    func battle(){
       var round = 0
        round += 1
    }
    // construction des équipes
    func buidTeam1 () ->[Warrior] {
    let vikingOne = Warrior(fighterName: fighterTeam1[0], arm: Ax())
    let gladiatorOne = Warrior(fighterName: fighterTeam1[1], arm: BroadSword())
    let knightOne = Warrior(fighterName: fighterTeam1[2], arm: Sword())
    
    self.team1 = [vikingOne, gladiatorOne, knightOne]
  
    return team1
    
    }
    func buidTeam2 () ->[Warrior] {
    
    let vikingTwo = Warrior(fighterName: fighterTeam2[0], arm: Ax())
       let gladiatorTwo = Warrior(fighterName: fighterTeam2[1], arm: BroadSword())
       let knightTwo = Warrior(fighterName: fighterTeam2[2], arm: Sword())
    
    self.team2 = [vikingTwo, gladiatorTwo, knightTwo]
    return  team2
    
    }
    func playerWhoPlay(round : Int ) -> Player{
         if round % 2 == 0 { return player2
                
            } else {
                return player1
                
            }
       
    }
  
    func playerWhoDontPlay(round : Int) -> Player{
        if round % 2 == 0 { return player1
                       
                   } else {
                       return player2
                       
                   }
        
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
    
    func displayResults(){
        
    }
}

