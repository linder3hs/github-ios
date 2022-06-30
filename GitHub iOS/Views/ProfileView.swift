//
//  ProfileView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 30) {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(maxWidth: 80, maxHeight: 80, alignment: .center)
                VStack(alignment: .leading) {
                  Text("Linder Hassinger")
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
                HStack {
                    Image(systemName: "building.fill")
                    Text("WT")
                }
                HStack {
                    Image(systemName: "location.circle.fill")
                    Text("Lima, Perú")
                }
            }
            HStack {
                Image(systemName: "link")
                Text("www.linderhassinger.info")
            }
            HStack {
                Image(systemName: "envelope.fill")
                Text("linderhassinger@gmail.com")
            }
            HStack {
                Image(systemName: "paperplane.circle")
                Text("@linder3hs")
            }
            HStack {
                Image(systemName: "cpu")
                Text("Developer Program Member")
            }
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
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
