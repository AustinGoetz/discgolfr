//
//  User.swift
//  discgolfr
//
//  Created by Austin Goetz on 10/18/20.
//

import UIKit

class User {
    let username: String
    let password: String
    var profilePhoto: UIImage? {
        get {
            guard let data = photoData else { return nil }
            return UIImage(data: data)
        } set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    var photoData: Data?
    
    init(username: String, password: String, profilePhoto: UIImage? = nil) {
        self.username = username
        self.password = password
        self.profilePhoto = profilePhoto
    }
}
