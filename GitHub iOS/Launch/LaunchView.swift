//
//  LaunchView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 30/06/22.
//

import SwiftUI

struct LaunchView: View {
    
    @StateObject var launchViewModel = LaunchViewModel()
    
    var body: some View {
        VStack {
            Image("octocat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
