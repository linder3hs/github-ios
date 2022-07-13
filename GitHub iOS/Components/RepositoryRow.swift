//
//  RepositoryRow.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 12/07/22.
//

import SwiftUI

struct RepositoryRow: View {
    
    var repository: Repository
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            ImageAsync(height: 40, width: 40, photoUrl: URL(string: repository.owner.avatar_url)!)
            VStack(alignment: .leading, spacing: 3) {
                Text(repository.owner.login)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                Text(repository.name)
                    .font(.system(size: 16, weight: .semibold))
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.bottom)
        .padding(.top)
    }
}

struct RepositoryRow_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryRow(repository: Repository(
            id: 1,
            node_id: "R_kgDOHcigPw",
            name: "codigo-16",
            full_name: "bdiazc90/codigo-16",
            owner: NotiOwner(
                login: "bdiazc90",
                avatar_url: "https://avatars.githubusercontent.com/u/20211744?v=4"
            ),
            description: "Para las clases del bootcamp",
            language: "HTML"
        ))
    }
}
