//
//  Scorecard.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import Foundation

class Scorecard {
    var strokes: Int
    let course: String
    let coursePar: Int
    let numberOfHoles: Int
    let timestamp: Date
    
    init(strokes: Int, course: String, coursePar: Int, numberOfHoles: Int, timestamp: Date = Date()) {
        self.strokes = strokes
        self.course = course
        self.coursePar = coursePar
        self.numberOfHoles = numberOfHoles
        self.timestamp = timestamp
    }
}
