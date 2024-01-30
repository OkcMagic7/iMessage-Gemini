//
//  MessageController.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation

class MessageController {
    private let iMessageService = IMessageService.shared
    private let geminiService = GeminiService.shared

    func receiveMessage(_ message: Message) {
        // Handle incoming message
        // For example, you might want to send this message to Gemini API for processing
        geminiService.fetchData { result in
            switch result {
            case .success(let responseData):
                // Process response and send a reply
                self.replyToMessage(with: responseData)
            case .failure(let error):
                print("Error fetching data from Gemini API: \(error)")
            }
        }
    }

    private func replyToMessage(with data: Data) {
        // Convert data to a message format and send it
        // This is a placeholder implementation
        let replyMessage = Message(id: UUID().uuidString, content: "This is a reply", senderId: "botId", receiverId: "userId", timestamp: Date())
        iMessageService.sendMessage(replyMessage, to: replyMessage.receiverId) { result in
            switch result {
            case .success():
                print("Reply sent successfully")
            case .failure(let error):
                print("Failed to send reply: \(error)")
            }
        }
    }

    // Add more methods as needed
}
