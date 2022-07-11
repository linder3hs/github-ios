//
//  Notifications.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 10/07/22.
//

import Foundation

struct Notifications: Codable {
    let id: String
    let unread: Bool
    let reason: String
    let updated_at: String
    let subject: NotiSubject
    let repository: NotiRepository?
}

struct NotiSubject: Codable {
    let title: String
    let url: String?
    let latest_comment_url: String?
    let type: String
}

struct NotiRepository: Codable {
    let name: String?
    let full_name: String?
    let owner: NotiOwner?
    let description: String?
}

struct NotiOwner: Codable {
    let login: String
    let avatar_url: String
}
