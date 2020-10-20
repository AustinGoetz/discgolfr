//
//  ScorecardController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import Foundation

class ScorecardController {
    
    // MARK: - Properties
    /// Shared Instance/Singleton
    static let shared = ScorecardController()
    /// Source of Truth
    var scorecards: [Scorecard] = []
    
    // MARK: - CRUD
    // Create
    func createScorecardWith(strokes: Int, course: String, coursePar: Int, numberOfHoles: Int) {
        let newScorecard = Scorecard(strokes: strokes, course: course, coursePar: coursePar, numberOfHoles: numberOfHoles)
        scorecards.append(newScorecard)
    }
}
