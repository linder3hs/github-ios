//
//  ImageAsync.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import SwiftUI

struct ImageAsync: View {
    
    @State var height: CGFloat = 80
    @State var width: CGFloat = 80
    @State var photoUrl: URL = URL(string: "https://avatars.githubusercontent.com/u/20673011?s=400&u=313cb18dc7dcb95126b81d45315529ebcb257053&v=4"
    )!
    
    var body: some View {
        AsyncImage(
            url: photoUrl
        ) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .frame(width: width, height: height)
        .clipShape(Circle())
    }
}

struct ImageAsync_Previews: PreviewProvider {
    static var previews: some View {
        ImageAsync()
    }
}
