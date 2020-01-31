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

//We collect the players'names
var collectName = Game()
var namePlayer : [String] = collectName.collectNamePlayer()


//The players give names to their warriors
var fighterTeam1 : [String] = ["","",""]
for index in 0...2 {
fighterTeam1[index] += collectName.collectNameFighter(number: "first")
}
var fighterTeam2 : [String] = ["","",""]
for range in 0...2 {
fighterTeam2[range] += collectName.collectNameFighter(number: "second")
}



// A chest will appear or not
 // à intégrer à battle dans game 
var chest = Chest(randomStrenght : 10)
var bool : Bool = false
if  bool == chest.appear(){
    let damage : Int = chest.armStrenght()
    print("The chest contains a random Arm of strenght : \(damage)\n)")
}


let game = GameAlternative()
game.start()
