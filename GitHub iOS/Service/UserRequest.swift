//
//  UserRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation

class UserRequest {
    
    let url = "https://api.github.com/user"
    
    func loadData() async -> User? {
        do {
            var request = URLRequest(url: URL(string: url)!)
            request.httpMethod = "GET"
            request.setValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
            request.setValue("token \(AuthViewModel.authToken)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            print("data")
            print(data)
            let user = try JSONDecoder().decode(User.self, from: data)
           
            print("user===")
            print(user)
            return user
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
    
}
