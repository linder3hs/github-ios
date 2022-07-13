//
//  RepositoryRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 12/07/22.
//

import Foundation

class RepositoryRequest {
    
    let service = Service()
    
    func loadData() async -> [Repository]? {
        do {
            guard let data = await service.getData(route: "\(service.REPOSITORY)") else { return nil }
            return try JSONDecoder().decode([Repository].self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
    
}
