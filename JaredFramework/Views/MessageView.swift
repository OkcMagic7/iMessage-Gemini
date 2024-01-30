//
//  MessageView.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation
import SwiftUI

struct MessageView: View {
    let chatMessage: ChatMessage

    var body: some View {
        HStack {
            if chatMessage.isCurrentUser {
                Spacer()
            }
            Text(chatMessage.message.content)
                .padding()
                .background(chatMessage.isCurrentUser ? Color.blue : Color.gray)
                .cornerRadius(10)
                .foregroundColor(.white)
            if !chatMessage.isCurrentUser {
                Spacer()
            }
        }
        .padding(chatMessage.isCurrentUser ? .leading : .trailing, 50)
        .padding(.vertical, 5)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(chatMessage: ChatMessage(message: Message(id: "1", content: "Hello", senderId: "user1", receiverId: "user2", timestamp: Date()), isCurrentUser: true))
    }
}
