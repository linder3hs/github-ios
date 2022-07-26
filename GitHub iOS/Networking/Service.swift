//
//  Service.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 2/07/22.
//

import Foundation
import FirebaseAuth
import Combine

struct Service {
        
    let headerField: String = "application/vnd.github+json"
    
//    func fetchJSON<T: Decodable>(_ request: URLRequest) -> AnyPublisher<JSONWebserviceResponse<T>, Error> {
//        return URLSession.shared
//            .dataTaskPublisher(for: request)
//            .tryMap { result -> JSONWebserviceResponse<T> in
//                let value = try JSONDecoder().decode(T.self, from: result.data)
//                return JSONWebserviceResponse(value: value, response: result.response)
//            }
//            .receive(on: DispatchQueue.main)
//            .eraseToAnyPublisher()
//    }
    
    func stringToURL(url: String) -> URL {
        return URL(string: "https://api.github.com\(url)")!
    }
    
    func setRequest(url: String, method: String = "GET") -> URLRequest {
        var request = URLRequest(url: stringToURL(url: url))
        request.httpMethod = method
        request.setValue(headerField, forHTTPHeaderField: "Accept")
        request.setValue("token \(AuthViewModel.authToken)", forHTTPHeaderField: "Authorization")
        return request
    }
    
    func fetchJSON(route: String) async -> Data? {
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
