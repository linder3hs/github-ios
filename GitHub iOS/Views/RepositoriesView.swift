//
//  RepositoriesView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 11/07/22.
//

import SwiftUI

struct RepositoriesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.backward")
                    .font(.system(size: 22, weight: .black))
            }
            TitleView(title: "Repositories")
            
            ScrollView {
                
            }
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
