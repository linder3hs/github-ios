//
//  Routes.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation
import FirebaseAuth

struct Routes {
    
    static let routes: [String: String] = [
        "user" : "/user",
        "notifications" : "/notifications?sort=created_at",
        "repository" : "/user/repos?visibility=all&affiliation=owner&sort=created_at&per_page=20"
    ]

    static func getURL(route: String) -> String {
        return routes[route]!
    }
     
}
