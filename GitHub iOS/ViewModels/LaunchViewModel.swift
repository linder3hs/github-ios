//
//  LaunchViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation
import Firebase

class LaunchViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    init() {
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .sigIn
    }
}
