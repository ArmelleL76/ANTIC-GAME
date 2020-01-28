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
var name = Game()
var namePlayer1 : String = name.collectNamePlayer(number : "first")
var namePlayer2 : String = name.collectNamePlayer(number : "second")

//The players give names to their warriors
var fighterTeam1 : [String] = ["","",""]
for index in 0...2 {
fighterTeam1[index] += name.collectNameFighter(number: "first")
}
var fighterTeam2 : [String] = ["","",""]
for range in 0...2 {
fighterTeam2[range] += name.collectNameFighter(number: "second")
}
//The players form their team and display teams

var player1 = Player(namePlayer: namePlayer1, numberTeam: 1)
var player2 = Player(namePlayer: namePlayer2, numberTeam: 2)
player1.displayTeam()

player2.displayTeam()

//We display the carateristics of the warriors

