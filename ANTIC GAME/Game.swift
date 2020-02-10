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



        let fighter = Warrior(arm: Ax())
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
        let playerWP = playerWhoPlay(round: round)
        print(player1.playerName)
        _ = playerWhoDontPlay(round: round)
        print(player2.playerName)
        switch playerWP {
        case 1 :  print("Player1 it's your turn, first choose a fighter in team1 : , ")
        case 2 : print("Player2 it's your turn, first choose e fighter in team 2")
        default : break
        }
        round += 1
     
    }
    // construction des équipes
    func buildTeam1 () ->[Warrior] {
   let vikingOne = Warrior(arm: Ax())
        team1.append(vikingOne)
    let gladiatorOne = Warrior(arm: BroadSword())
        team1.append(gladiatorOne)
    let knightOne = Warrior(arm: Sword())
        team1.append(knightOne)
      
  
    return team1
    
    }
    func buildTeam2 () ->[Warrior] {
    
    let vikingTwo = Warrior( arm: Ax())
         team2.append(vikingTwo)
       let gladiatorTwo = Warrior(arm: BroadSword())
           team2.append(gladiatorTwo)
       let knightTwo = Warrior(arm: Sword())
       team2.append(knightTwo)
   
    return  team2
    
    }
    func playerWhoPlay(round : Int ) -> Int{
         if round % 2 == 0 { return 2
                
            } else {
                return 1
                
            }
       
    }
  
    func playerWhoDontPlay(round : Int) -> Int{
        if round % 2 == 0 { return 1
                       
                   } else {
                       return 2
                       
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

