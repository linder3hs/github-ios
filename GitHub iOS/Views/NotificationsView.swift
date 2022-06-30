//
//  NotificationsView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TitleView(title: "Inbox")
            HStack {
                Button {
                    print("Inbox")
                } label: {
                    Text("Inbox")
                }
                Button {
                    print("Inbox")
                } label: {
                    Text("Unread")
                }
                Button {
                    print("Inbox")
                } label: {
                    Text("Repository")
                }
            }
            
            List {
                ForEach(1..<10) { _ in
                    HStack {
                        Image("arrow.triangle.branch")
                        VStack(alignment: .leading, spacing: 12) {
                            Text("doubleencore/ SNY-Android #360")
                            Text("Future 1.2.1 into milestone")
                            Text("Merged #360 into milestone.")
                        }
                    }
                    
                }
                .listRowInsets(EdgeInsets())
                .padding(.bottom)
                .padding(.top)
            }
            .listStyle(PlainListStyle())
            .padding(.top)
        
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
