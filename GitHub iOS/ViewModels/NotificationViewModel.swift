//
//  NotificationViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 10/07/22.
//

import Foundation

class NotificationViewModel: ObservableObject {
    
    func loadNotifications() async -> [Notifications]? {
        return await NotificationRequest.loadData()
    }
    
}
