//
//  JSONWebserviceResponse.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 19/07/22.
//

import Foundation

struct JSONWebserviceResponse<T: Decodable> {
    let value: T
    let response: URLResponse
}
