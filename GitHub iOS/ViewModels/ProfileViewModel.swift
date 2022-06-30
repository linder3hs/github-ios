//
//  ProfileViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation
import FirebaseAuth

class ProfileViewModel: ObservableObject {
    
    func loadUserData() -> User? {
        let user = Auth.auth().currentUser
        
        if let user = user {
            return User(
                name: user.displayName!,
                email: user.email!,
                photoUrl: user.photoURL!
            )
        }
        
        return nil
    }
}
