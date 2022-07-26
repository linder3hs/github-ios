//
//  RepoDetailView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 21/07/22.
//

import SwiftUI

struct RepoDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    ImageAsync(height: 40, width: 40, photoUrl: URL(string: "https://avatars.githubusercontent.com/u/20673011?v=4")!)
                    Text("linder3hs")
                        .foregroundColor(.gray)
                }
                Text("blog-json")
                    .font(.system(size: 32, weight: .bold))
                Text("API list of blog from my page")
                HStack {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 16, weight: .bold))
                    Text("Prviate")
                }
                HStack(spacing: 50) {
                    HStack {
                        Image(systemName: "star.fill")
                        Text("3 stars")
                    }
                    HStack {
                        Image(systemName: "tuningfork")
                        Text("3 forks")
                    }
                }
                HStack {
                    Button {
                        print("sss")
                    } label: {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 16))
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                        .stroke(.black, lineWidth: 1)
                    )
                    
                    Spacer()
                    Button {
                        print("asdsa")
                    } label: {
                        HStack {
                            Image(systemName: "plus")
                            Text("Add to list")
                                .font(.system(size: 16))
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                        .stroke(.black, lineWidth: 1)
                    )
                    
                    Spacer()
                    Button {
                        print("sss")
                    } label: {
                        Image(systemName: "bell.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15))
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                        .stroke(.black, lineWidth: 1)
                    )
                }
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .padding()
               
        }
    }
}

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView()
    }
}
