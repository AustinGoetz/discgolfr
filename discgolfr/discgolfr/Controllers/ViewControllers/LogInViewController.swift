//
//  LogInViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        // I: Identifier
        if segue.identifier == "toHomeVC" {
            // D: Destination
            guard let destinationVC = segue.destination as? HomeViewController else { return }
            // O: Object to send
            guard let username = usernameTextField.text, !username.isEmpty else { return }
            let userToSend = User(name: username)
            // O: receive Object
            destinationVC.userToReceive = userToSend
        }
    }
}
