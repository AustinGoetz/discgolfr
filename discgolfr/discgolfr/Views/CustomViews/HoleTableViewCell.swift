//
//  HoleTableViewCell.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

class HoleTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var holeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    // MARK: - Properties
    var scorecard: Scorecard?
    
    func updateViews() {
        guard let scorecard = scorecard else { return }
        for hole in scorecard.holes {
            holeLabel.text = "Hole \(hole)"
        }
    }
}
