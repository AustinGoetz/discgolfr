//
//  Scorecard.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import Foundation

class Scorecard {
    let playerName: String
    let courseName: String?
    let coursePar: Int?
    let courseNumberOfHoles: Int
    
    init(playerName: String, courseName: String?, coursePar: Int?, courseNumberOfHoles: Int = 9) {
        self.playerName = playerName
        self.courseName = courseName
        self.coursePar = coursePar
        self.courseNumberOfHoles = courseNumberOfHoles
    }
}
