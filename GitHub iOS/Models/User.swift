//
//  User.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation

class User {
    let name: String
    let email: String
    let photoUrl: URL
    
    init(name: String, email: String, photoUrl: URL) {
        self.name = name
        self.email = email
        self.photoUrl = photoUrl
    }
}
