//
//  ProfileView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var profileViewModel = ProfileViewModel()
    
    @State private var user: User? = nil
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 30) {
                ImageAsync(
                    height: 80,
                    width: 80,
                    photoUrl: (
                        user?.photoUrl ??
                        URL(string: "https://avatars.githubusercontent.com/u/20673011?s=400&u=313cb18dc7dcb95126b81d45315529ebcb257053&v=4")
                    )!
                )
                
                VStack(alignment: .leading) {
                    Text(user?.name ?? "Anderson Hassinger")
                        .font(.system(size: 22, weight: .bold))
                    Text("linder3hs")
                }
            }
            HStack {
                Image(systemName: "house")
                Text("Working from home")
            }
            Text("Software Developer")
            HStack(spacing: 50) {
                RowIconText(icon: "building.fill", text: "WT")
                RowIconText(icon: "location.circle.fill", text: "Lima, Perú")
            }
            RowIconText(
                icon: "envelope.fill",
                text: user?.email ?? "linderhassinger00@gmail.com"
            )
            RowIconText(icon: "paperplane.circle", text: "@linder3hs")
            RowIconText(icon: "cpu", text: "Developer Program Member")
            RowIconText(icon: "link", text: "www.linderhassinger.info")
            
            HStack(spacing: 10) {
                HStack {
                    Image(systemName: "person.fill")
                    Text("88 followers")
                }
                HStack {
                    Text("4 following")
                }
            }
        }
        .padding()
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
        )
        .onAppear {
            user = profileViewModel.loadUserData()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
