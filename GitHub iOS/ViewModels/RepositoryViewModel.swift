//
//  RepositoryViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 12/07/22.
//

import Foundation

class RepositoryViewModel: ObservableObject {
    
    func loadRepository() async -> [Repository]? {
        return await RepositoryRequest.loadData()
    }
    
}
