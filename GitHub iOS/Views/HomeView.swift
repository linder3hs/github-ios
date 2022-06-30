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
        Items(icon: "circle.circle.fill", text: "Issues"),
        Items(icon: "arrow.triangle.branch", text: "Pull Request"),
        Items(icon: "text.bubble.fill", text: "Discussions"),
        Items(icon: "book.closed.fill", text: "Repositories"),
        Items(icon: "building.fill", text: "Organizations"),
        Items(icon: "star.fill", text: "Starred"),
    ]
    
    
    var body: some View {
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
                        
                        ForEach(items, id: \.text) { item in
                            HStack(spacing: 20) {
                                Image(systemName: item.icon)
                                Text(item.text)
                            }
                            .padding(.bottom)
                        }
                        
                        Text("Favorites")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.bottom)
                    }
                }
            }
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
