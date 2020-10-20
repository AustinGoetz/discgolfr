//
//  LogInViewController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/19/20.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var profileImageContainerView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var LogInButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var letsGoButton: UIButton!
    
    // MARK: - Properties
    var image: UIImage?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    // MARK: Actions
    @IBAction func signUpButtonTapped(_ sender: Any) {
    }
    
    @IBAction func logInButtonTapped(_ sender: Any) {
    }
    
    @IBAction func letsGoButtonTapped(_ sender: Any) {
        if passwordTextField.text != confirmTextField.text {
            presentAlertController()
            return
        }
        
        guard let username = usernameTextField.text, !username.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else { return }
        
        UserController.shared.createUserWith(username: username, password: password, profilePhoto: image)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "scorecardListTableView")
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true, completion: nil)
    }
    
    // MARK: Functions
    func setUpViews() {
        profileImageContainerView.clipsToBounds = true
        profileImageContainerView.layer.cornerRadius = profileImageContainerView.frame.height / 2
    }
    
    func presentAlertController() {
        let alertController = UIAlertController(title: "Error", message: "Passwords must match exactly", preferredStyle: .actionSheet)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        alertController.addAction(dismissAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPhotoPickerVC" {
            let destinationVC = segue.destination as? PhotoPickerViewController
            destinationVC?.delegate = self
        }
    }
}

// MARK: - Extensions
extension LogInViewController: PhotoSelectorDelegate {
    func photoPickerSelected(image: UIImage) {
        self.image = image
    }
}
