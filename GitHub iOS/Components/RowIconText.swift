//
//  RowIconText.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import SwiftUI

struct RowIconText: View {
    
    @Binding var icon: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(text)
        }
    }
}

struct RowIconText_Previews: PreviewProvider {
    static var previews: some View {
        RowIconText(icon: .constant("paperplane.circle"), text: .constant("linder3hs"))
    }
}
