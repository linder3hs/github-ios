//
//  UserRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation

struct UserRequest {
    
    static let service = Service()
    
    static func loadData() async -> User? {
        do {
            guard let data = await service.fetchJSON(route: Routes.getURL(route: "user")) else { return nil }
            return try JSONDecoder().decode(User.self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
    
}
