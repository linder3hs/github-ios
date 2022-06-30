//
//  AppState.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import Foundation

class AppState: ObservableObject {
    
    static let shared = AppState()
    
    enum AppScreens {
        case sigIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .sigIn
    
}
