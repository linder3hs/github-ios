//
//  HomeView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText: String = ""
    @State private var items: [Items] = [
        Items(icon: "circle.circle.fill", text: "Issues", color: .green),
        Items(icon: "arrow.triangle.branch", text: "Pull Request", color: .blue),
        Items(icon: "text.bubble.fill", text: "Discussions", color: .purple),
        Items(icon: "book.closed.fill", text: "Repositories", color: .black),
        Items(icon: "building.fill", text: "Organizations", color: .orange),
        Items(icon: "star.fill", text: "Starred", color: .yellow),
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                TitleView(title: "Home")
                
                ScrollView {
                    VStack(alignment: .leading) {
                        TextField("Search GitHub", text: $searchText)
                            .textFieldStyle(.roundedBorder)
                        
                        Text("My work")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.bottom)
                            .padding(.top)
                        
                        List(items, id: \.text) { item in
                            NavigationLink(destination: RepositoriesView()) {
                                HStack(spacing: 20) {
                                    Image(systemName: item.icon)
                                        .foregroundColor(.white)
                                        .padding(3)
                                        .background(item.color)
                                        .cornerRadius(4)
                                        .font(.system(size: 14))
                                    Text(item.text)
                                        .foregroundColor(.black)
                                }
                                .padding(.bottom)
                                .padding(.top)
                            }
                        }
                        .frame(width: .infinity, height: 400, alignment: .leading)
                        .listStyle(PlainListStyle())
                        
                        Text("Favorites")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.bottom)
                    }
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
