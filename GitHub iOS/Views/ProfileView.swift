//
//  ProfileView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var profileViewModel = ProfileViewModel()
    @StateObject var authViewModel = AuthViewModel()
    
    @State private var user: User? = nil
    
    let urlProfile = "https://avatars.githubusercontent.com/u/20673011?s=400&u=313cb18dc7dcb95126b81d45315529ebcb257053&v=4"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 30) {
                ImageAsync(
                    height: 80,
                    width: 80,
                    photoUrl: (
                        URL(string: user?.avatarURL ?? urlProfile)
                    )!
                )
                VStack(alignment: .leading) {
                    Text(user?.name ?? "")
                        .font(.system(size: 22, weight: .bold))
                    Text(user?.login ?? "")
                }
            }
            HStack {
                Image(systemName: "house")
                Text("Working from home")
            }
            Text(user?.bio ?? "")
            HStack(spacing: 50) {
                RowIconText(icon: .constant("building.fill"), text: .constant(user?.company ?? ""))
                RowIconText(icon: .constant("location.circle.fill"), text: .constant(user?.location ?? ""))
            }
            RowIconText(
                icon: .constant("envelope.fill"),
                text: .constant(user?.email ?? "")
            )
            RowIconText(icon: .constant("paperplane.circle"), text: .constant(user?.twitterUsername ?? ""))
            RowIconText(icon: .constant( "cpu"), text: .constant("Developer Program Member"))
            RowIconText(icon: .constant("link"), text: .constant(user?.blog ?? ""))
            
            HStack(spacing: 10) {
                HStack {
                    Image(systemName: "person.fill")
                    Text(String(user?.followers ?? 0) + " followers")
                }
                HStack {
                    Text(String(user?.following ?? 0) + "following")
                }
            }
            VStack {
                Spacer()
                Button {
                    authViewModel.logout()
                } label: {
                    Text("Sign Out")
                        .foregroundColor(.pink)
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
        .task {
            user = await profileViewModel.loadUserData()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
