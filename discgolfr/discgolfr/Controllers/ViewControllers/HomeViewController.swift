//
//  HomeViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Properties
    var userToReceive: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    // MARK: - Class Functions
    func updateViews() {
        guard let user = userToReceive else { return }
        nameLabel.text = user.name
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        // I: Identifier
        if segue.identifier == "toCreateScorecardVC" {
            // D: Destination
            guard let destinationVC = segue.destination as? CreateScorecardViewController else { return }
            // O: receive Object
            destinationVC.user = self.userToReceive
        }
    }
}
