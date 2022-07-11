//
//  UserRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation

class UserRequest {
    
    let service = Service()
    
    func loadData() async -> User? {
        do {
            guard let data = await service.getData(route: "\(service.USER)") else { return nil }
            return try JSONDecoder().decode(User.self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
    
}
