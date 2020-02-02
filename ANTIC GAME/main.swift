//
//  main.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
//Short presentation of the game
var game = Game()
print(game.presentation())

//We give name to players, players give name to their fighters and we display the teams
print(game.display())

// A chest will appear or not
 // à intégrer à battle dans game 
game.appearChest()

//let game = GameAlternative()
//game.start()
