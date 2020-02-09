//
//  main.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
//Short presentation of the game
var game = Game(player1 : Player(playerName : ""), player2 : Player(playerName : ""))
print(game.presentation())
game.displayWarriorTeams()
print(game.fighterTeam1)
print(game.fighterTeam2)

//Je fais un print pour tester la fonction buildTeam
//print(game.buidTeam1()[0].fighterName)
// me renvoie bien le nom du premier viking, ouf! 





// A chest will appear or not
 // à intégrer à battle dans game 
var chest = Chest(randomStrenght : 10)


  print(chest.appear())



//let game = GameAlternative()
//game.start()
