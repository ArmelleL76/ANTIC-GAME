//
//  main.swift
//  ANTIC GAME
//
//  Created by macmini-Armelle on 23/01/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
//Short presentation of the game
var display = Game()
print(display.presentation())

//We give name to players, players give name to their fighters and we display the teams
print("\(display.displayWarriorTeam())")

// A chest will appear or not
 // à intégrer à battle dans game 
var chest = Chest(randomStrenght : 10)

if  chest.appear(){
    let damage : Int = chest.armStrenght()
    print("The chest contains a random Arm of strenght : \(damage)\n)")
}


//let game = GameAlternative()
//game.start()
