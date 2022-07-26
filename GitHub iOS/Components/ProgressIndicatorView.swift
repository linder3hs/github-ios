//
//  ProgressIndicatorView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 19/07/22.
//

import SwiftUI

struct ProgressIndicatorView: View {
    var body: some View {
        VStack(spacing: 20) {
            ProgressView()
            Text("Loading...")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProgressIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicatorView()
    }
}
