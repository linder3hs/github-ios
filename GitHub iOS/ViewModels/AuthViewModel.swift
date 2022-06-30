//
//  AuthViewModel.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import Foundation
import SwiftUI
import FirebaseAuth
import RealmSwift

class AuthViewModel: ObservableObject {
    
    @Published var showError = false
    @Published var errorMessage = ""
    
    var provider = OAuthProvider(providerID: "github.com")
    var appState: AppState = .shared
    
    let localRealm = try! Realm()
    
    func login() {
        provider.scopes = ["user:email"]
        provider.getCredentialWith(nil) { credential, error in
            if error != nil {
                self.showError = true
                self.errorMessage = error!.localizedDescription
            }
            
            if credential != nil {
                Auth.auth().signIn(with: credential!) { authResult, error in
                    if error != nil {
                        self.showError = true
                        self.errorMessage = error!.localizedDescription
                    }
                    
                    guard let oauthCredential = authResult?.credential as? OAuthCredential else { return }
                    
                    let objectGitHub = GitHub(
                        accessToken: oauthCredential.accessToken ?? "",
                        idToken: oauthCredential.idToken ?? "",
                        secret: oauthCredential.secret ?? "",
                        provider: oauthCredential.provider
                    )
                    
                    try! self.localRealm.write({
                        self.localRealm.add(objectGitHub)
                    })
                    
                    self.appState.currentScreen = .main
                }
            }
            
        }
    }
    
}
