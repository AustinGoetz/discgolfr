//
//  CreateScorecardViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

class CreateScorecardViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var scorecardPlayerLabel: UILabel!
    @IBOutlet weak var courseNameTextField: UITextField!
    @IBOutlet weak var courseParTextField: UITextField!
    @IBOutlet weak var holeNumberTextField: UITextField!
    
    // MARK: - Properties
    /// Landing Pad
    var user: User?
    var scorecard: Scorecard?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    // MARK: - Actions
    @IBAction func startRoundButtonTapped(_ sender: Any) {
        guard let user = user,
              let courseName = courseNameTextField.text, !courseName.isEmpty,
              let coursePar = courseParTextField.text, !coursePar.isEmpty else { return }
        let parAsInt = Int(coursePar) ?? 0
    
        ScorecardController.shared.createScorecardWith(player: user, course: courseName, par: parAsInt) { (scorecard) in
            self.scorecard = scorecard
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        guard let destinationVC = storyBoard.instantiateViewController(withIdentifier: "scorecardTableVC") as? ScorecardTableViewController else { return }
        
        destinationVC.scorecard = self.scorecard
        
        self.present(destinationVC, animated:true, completion:nil)
    }
    
    
    // MARK: - Class Functions
    func updateViews() {
        guard let user = user else { return }
        scorecardPlayerLabel.text = "Scorecard for \(user.name)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
