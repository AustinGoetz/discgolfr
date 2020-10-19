//
//  Scorecard.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import Foundation

class Scorecard {
    let player: String
    let courseName: String
    let totalStrokes: Int?
    let coursePar: Int
    let numberOfHoles: Int
    let timestamp: Date
    
    init(player: String, courseName: String, totalStrokes: Int?, coursePar: Int, numberOfHoles: Int = 18, timestamp: Date = Date()) {
        self.player = player
        self.courseName = courseName
        self.totalStrokes = totalStrokes
        self.coursePar = coursePar
        self.numberOfHoles = numberOfHoles
        self.timestamp = timestamp
    }
}
