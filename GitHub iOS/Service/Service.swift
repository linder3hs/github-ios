//
//  Service.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation

class Service: Routes {
    
    let routes = Routes()
    
    func getData(route: String) async -> Data? {
        do {
            let request = self.setRequest(url: route)
            let (data, _) = try await URLSession.shared.data(for: request)
            return data
        } catch let error {
            print("error \(error)")
            return nil
        }
    }
    
    
}
