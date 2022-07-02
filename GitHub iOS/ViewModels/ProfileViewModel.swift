//
//  ProfileViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation
import FirebaseAuth

class ProfileViewModel: ObservableObject {
    
    let userRequest = UserRequest()
    
    func loadUserData() async -> User? {
        return await userRequest.loadData()
    }
}
