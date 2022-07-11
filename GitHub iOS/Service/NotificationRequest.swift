//
//  NotificationRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 10/07/22.
//

import Foundation

class NotificationRequest {
    
    let service = Service()
    
    func loadData() async -> [Notifications]? {
        do {
            guard let data = await service.getData(route: "\(service.NOTIFICATIONS)") else { return nil }
            return try JSONDecoder().decode([Notifications].self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
}
