//
//  User.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import UIKit

class User {
    let name: String
    var scorecards: [Scorecard]
    
    init(name: String, scorecards: [Scorecard]) {
        self.name = name
        self.scorecards = scorecards
    }
}
