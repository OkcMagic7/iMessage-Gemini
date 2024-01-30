//
//  ChatMessage.swif.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

struct ChatMessage {
    var message: Message
    var isCurrentUser: Bool

    init(message: Message, isCurrentUser: Bool) {
        self.message = message
        self.isCurrentUser = isCurrentUser
    }
}
