//
//  ScorecardController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import Foundation

class ScorecardController {
    
    // MARK: - Properties
    /// Shared Instance
    static let shared = ScorecardController()
    /// Source of Truth
    var scorecards: [Scorecard] = []
    
    // MARK: - CRUD
    // Create
    func createScorecardWith(player: User, course: String, par: Int, completion: @escaping (Scorecard) -> Void) {
        let newScorecard = Scorecard(player: player, course: course, par: par)
        
        scorecards.append(newScorecard)
    }
}
