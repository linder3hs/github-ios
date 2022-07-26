//
//  RepositoryRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 12/07/22.
//

import Foundation
import Combine

struct RepositoryRequest {
    
    static let service = Service()
    
    static func loadData() async -> [Repository]? {
        do {
            guard let data = await service.fetchJSON(route: Routes.getURL(route: "repository")) else { return nil }
            return try JSONDecoder().decode([Repository].self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
    
}
