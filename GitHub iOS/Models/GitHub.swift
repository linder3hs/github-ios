//
//  GitHub.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import RealmSwift

class GitHub: Object {
    @Persisted var accessToken: String? = ""
    @Persisted var idToken: String? = ""
    @Persisted var secret: String? = ""
    @Persisted var provider: String? = ""
    
    convenience init(accessToken: String, idToken: String, secret: String, provider: String) {
        self.init()
        self.accessToken = accessToken
        self.idToken = idToken
        self.secret = secret
        self.provider = provider
    }
}
