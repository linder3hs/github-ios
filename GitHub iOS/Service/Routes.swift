//
//  Routes.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation
import FirebaseAuth

class Routes {
    
    let BASE_URL = "https://api.github.com"
    let USER = "/user"
    let NOTIFICATIONS = "/notifications"
    let REPOSITORY = "/user/repos"
    
    func setRequest(url: String, method: String = "GET") -> URLRequest {
        let url = URL(string: "\(BASE_URL)\(url)")!
        var request = URLRequest(url: url)
        request.httpMethod = method
        request.setValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
        request.setValue("token \(AuthViewModel.authToken)", forHTTPHeaderField: "Authorization")
        return request
    }
}
