//
//  NotificationRequest.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 10/07/22.
//

import Foundation

struct NotificationRequest {
    
    static let service = Service()
    
    static func loadData() async -> [Notifications]? {
        do {
            guard let data = await service.fetchJSON(route: Routes.getURL(route: "notifications")) else { return nil }
            return try JSONDecoder().decode([Notifications].self, from: data)
        } catch let error {
            print("error: \(error)")
            return nil
        }
    }
}
