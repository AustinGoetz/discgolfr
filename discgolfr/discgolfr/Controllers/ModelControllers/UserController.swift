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
    func createUserWith(name: String) {
        let newUser = User(name: name)
        self.user = newUser
    }
}
