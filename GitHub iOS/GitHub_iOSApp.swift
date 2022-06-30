//
//  GitHub_iOSApp.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

@main
struct GitHub_iOSApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var appState: AppState = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .sigIn:
                SignView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            }
            
        }
    }
}
