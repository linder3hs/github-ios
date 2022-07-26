//
//  RepositoriesView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 11/07/22.
//

import SwiftUI

struct RepositoriesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var repositoryViewModel = RepositoryViewModel()
    
    @State var repositories = [Repository]()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .font(.system(size: 22, weight: .semibold))
            }
            TitleView(title: "Repositories")
            
            if repositories.isEmpty {
                ProgressIndicatorView()
            }
            
                List(repositories, id: \.id) { repo in
                    NavigationLink(destination: RepoDetailView()) {
                        RepositoryRow(repository: repo)
                            .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                    }
                }
                .task {
                    repositories = await repositoryViewModel.loadRepository()!
                }
                .listStyle(PlainListStyle())
            
        }
        .navigationBarHidden(true)
        .padding()
        
    }
}

struct RepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoriesView()
    }
}
