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
    
    static let localRealm = try! Realm()
    
    static var authToken: String {
        let users = localRealm.objects(GitHub.self)
        return users[0]["accessToken"] as! String
    }
    
    func save(oauthCredential: OAuthCredential) {
        let objectGitHub = GitHub(
            accessToken: oauthCredential.accessToken ?? "",
            idToken: oauthCredential.idToken ?? "",
            secret: oauthCredential.secret ?? "",
            provider: oauthCredential.provider
        )
        
        try! AuthViewModel.localRealm.write({
            AuthViewModel.localRealm.add(objectGitHub)
        })
    }
    
    func login() {
        provider.scopes = ["user:email"]
        provider.getCredentialWith(nil) { credential, error in
            if error != nil {
                self.showError = true
                self.errorMessage = error!.localizedDescription
                return
            }
            
            if credential != nil {
                Auth.auth().signIn(with: credential!) { authResult, error in
                    if error != nil {
                        self.showError = true
                        self.errorMessage = error!.localizedDescription
                        return
                    }
                    
                    guard let oauthCredential = authResult?.credential as? OAuthCredential else { return }
                    
                    self.save(oauthCredential: oauthCredential)
                    
                    self.appState.currentScreen = .main
                }
            }
            
        }
    }
        
}
