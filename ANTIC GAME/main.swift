//
//  main.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
//Short presentation of the game
var game = Game(fighterTeam1: [], fighterTeam2: [])
print(game.presentation())
game.displayWarriorTeams()


//Je fais un print pour tester la fonction buidTeam
print(game.buidTeam1())






// A chest will appear or not
 // à intégrer à battle dans game 
var chest = Chest(randomStrenght : 10)


  print(chest.appear())



//let game = GameAlternative()
//game.start()
