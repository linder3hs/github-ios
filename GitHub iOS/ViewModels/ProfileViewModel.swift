//
//  ProfileViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation
import FirebaseAuth

class ProfileViewModel: ObservableObject {
    
    func loadUserData() async -> User? {
        return await UserRequest.loadData()
    }
}
