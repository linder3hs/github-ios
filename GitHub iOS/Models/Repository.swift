//
//  Repository.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 12/07/22.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let node_id: String
    let name: String
    let full_name: String
    let owner: NotiOwner
    let description: String?
    let language: String?
}
