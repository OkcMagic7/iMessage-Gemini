//
//  Message.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

struct Message {
    var id: String
    var content: String
    var senderId: String
    var receiverId: String
    var timestamp: Date

    init(id: String, content: String, senderId: String, receiverId: String, timestamp: Date) {
        self.id = id
        self.content = content
        self.senderId = senderId
        self.receiverId = receiverId
        self.timestamp = timestamp
    }
}
