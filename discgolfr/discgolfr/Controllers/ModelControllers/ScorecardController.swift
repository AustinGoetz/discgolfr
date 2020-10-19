//
//  ScorecardController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import Foundation

class ScorecardController {
    // MARK: - Class Properties
    /// Shared Instance/Singleton
    static let shared = ScorecardController()
    /// Source of Truth
    var scorecards: [Scorecard] = []
    
    // MARK: - CRUD
    /// Create
    func createScorecardWith(player: String, courseName: String?, coursePar: Int?) {
        let newScorecard = Scorecard(playerName: player, courseName: courseName, coursePar: coursePar)
        scorecards.append(newScorecard)
    }
}
