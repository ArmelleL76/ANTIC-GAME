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
    init(){}
    func presentation()-> String{
        //Présentation du jeu
        var myText : String = ""
        myText = "************Welcome to French Game factory!***************\n\nYou will test the ANTIC FIGHT GAME: \n\n"
        
        myText += "1. Two players choose three fighters to make a warrior's team\nWe'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n"
        myText += "Fighters fight together or choose to improve their arms or to gain more lives .At the end, the winner is the player with a fighter alive\n\n"
        
        myText += "Here is the list of possible fighters : \n\n  Team1: \n\n Viking1, Gladiator1 and Knight1\n\n******************\n\nTeam2:\n\n Viking2, Gladiator2 and Knight2\n\n******************\n\n"
        
        myText += "Here is a list of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n"
   return myText }
    
}
