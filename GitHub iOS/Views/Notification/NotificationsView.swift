//
//  NotificationsView.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 29/06/22.
//

import SwiftUI

struct NotificationsView: View {
    
    @StateObject var notificationViewModel = NotificationViewModel()
    
    @State var notifications = [Notifications]()
    
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
            
            if notifications.isEmpty {
                ProgressIndicatorView()
            }
            
            List(notifications, id: \.id) { notification in
                NotificationRow(notification: notification)
                    .listRowInsets(EdgeInsets(top: 10, leading: -10, bottom: 10, trailing: 10))
            }
            .task {
                notifications = await notificationViewModel.loadNotifications()!
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
