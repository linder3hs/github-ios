//
//  NotificationRow.swift
//  GitHub iOS
//
//  Created by Linder Anderson Hassinger Solano    on 10/07/22.
//

import SwiftUI

struct NotificationRow: View {
    
    @State var notification: Notifications
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text((notification.repository?.full_name)!)
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                Text(notification.subject.title)
                    .lineLimit(2)
                    .font(.system(size: 16, weight: .semibold))
                HStack {
                    ImageAsync(
                        height: 30,
                        width: 30,
                        photoUrl: URL(string: (notification.repository?.owner?.avatar_url)!)!
                    )
                    if let desc = notification.repository?.description {
                        Text(desc)
                            .lineLimit(2)
                            .font(.system(size: 14))
                    }
                    
                }
            }
            Spacer()
            Image(systemName: "chevron.right")
//            Text(notification.updated_at.formatDate)
        }.padding()
    }
}

struct NotificationRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationRow(notification: Notifications(
            id: "3968655064",
            unread: true,
            reason: "subscribed",
            updated_at: "2022-07-11T02:59:22Z",
            subject: NotiSubject(
                title: "Fix macOS build",
                url: "https://api.github.com/repos/oven-sh/bun/pulls/525",
                latest_comment_url: "https://api.github.com/repos/oven-sh/bun/issues/comments/1179910318",
                type: "PullRequest"
            ),
            repository: NotiRepository(
                name: "bun",
                full_name: "oven-sh/bun",
                owner: NotiOwner(
                    login: "oven-sh",
                    avatar_url: "https://avatars.githubusercontent.com/u/108928776?v=4"
                ),
                description: "Incredibly fast JavaScript runtime, bundler, transpiler and package manager – all in one."
            )
        ))
    }
}
