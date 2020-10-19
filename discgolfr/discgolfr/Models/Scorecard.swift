//
//  Scorecard.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import Foundation

class Scorecard {
    let player: User
    let course: String
    let par: Int
    let holes: [Int]
    
    init(player: User, course: String, par: Int, holes: [Int]) {
        self.player = player
        self.course = course
        self.par = par
        self.holes = holes
    }
}
