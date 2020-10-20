//
//  UserController.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import UIKit

class UserController {
    // MARK: - Class Properties
    /// Singleton
    static let shared = UserController()
    /// User Reference
    var user: User?
    
    // MARK: - CRUD
    // Create
    func createUserWith(username: String, password: String, profilePhoto: UIImage?) {
        let newUser = User(username: username, password: password, profilePhoto: profilePhoto)
        self.user = newUser
    }
}
