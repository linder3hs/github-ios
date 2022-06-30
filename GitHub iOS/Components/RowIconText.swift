//
//  RowIconText.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import SwiftUI

struct RowIconText: View {
    
    @State var icon: String
    @State var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(text)
        }
    }
}

struct RowIconText_Previews: PreviewProvider {
    static var previews: some View {
        RowIconText(icon: "paperplane.circle", text: "@linder3hs")
    }
}
