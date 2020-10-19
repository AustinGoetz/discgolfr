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
    
    // MARK: - Actions
    @IBAction func signInButtonTapped(_ sender: Any) {
        guard let name = usernameTextField.text, !name.isEmpty else { return }
        let newUser = User(name: name)
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destinationVC = storyboard.instantiateViewController(withIdentifier: "homeViewController") as? HomeViewController else { return }
        let navigationController = UINavigationController(rootViewController: destinationVC)
        navigationController.modalPresentationStyle = .fullScreen
        
        destinationVC.userToReceive = newUser
        
        self.present(navigationController, animated: true, completion: nil)
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
